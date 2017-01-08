// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.gson.stream:
//            StringPool, JsonScope, JsonToken, MalformedJsonException

public class JsonReader
    implements Closeable
{

    private static final char NON_EXECUTE_PREFIX[] = ")]}'\n".toCharArray();
    private final char buffer[] = new char[1024];
    private int bufferStartColumn;
    private int bufferStartLine;
    private boolean hasToken;
    private final Reader in;
    private boolean lenient;
    private int limit;
    private String name;
    private int pos;
    private boolean skipping;
    private final List stack = new ArrayList();
    private final StringPool stringPool = new StringPool();
    private JsonToken token;
    private String value;

    public JsonReader(Reader reader)
    {
        lenient = false;
        pos = 0;
        limit = 0;
        bufferStartLine = 1;
        bufferStartColumn = 1;
        push(JsonScope.EMPTY_DOCUMENT);
        skipping = false;
        if (reader == null)
        {
            throw new NullPointerException("in == null");
        } else
        {
            in = reader;
            return;
        }
    }

    private JsonToken advance()
    {
        quickPeek();
        JsonToken jsontoken = token;
        hasToken = false;
        token = null;
        value = null;
        name = null;
        return jsontoken;
    }

    private void checkLenient()
    {
        if (!lenient)
        {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        } else
        {
            return;
        }
    }

    private void consumeNonExecutePrefix()
    {
        nextNonWhitespace();
        pos = -1 + pos;
        if (pos + NON_EXECUTE_PREFIX.length <= limit || fillBuffer(NON_EXECUTE_PREFIX.length)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= NON_EXECUTE_PREFIX.length)
                {
                    break label1;
                }
                if (buffer[i + pos] != NON_EXECUTE_PREFIX[i])
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        pos = pos + NON_EXECUTE_PREFIX.length;
        return;
    }

    private void decodeLiteral()
    {
        if (value.equalsIgnoreCase("null"))
        {
            token = JsonToken.NULL;
            return;
        }
        if (value.equalsIgnoreCase("true") || value.equalsIgnoreCase("false"))
        {
            token = JsonToken.BOOLEAN;
            return;
        }
        try
        {
            Double.parseDouble(value);
            token = JsonToken.NUMBER;
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            checkLenient();
        }
        token = JsonToken.STRING;
    }

    private void expect(JsonToken jsontoken)
    {
        quickPeek();
        if (token != jsontoken)
        {
            throw new IllegalStateException((new StringBuilder("Expected ")).append(jsontoken).append(" but was ").append(peek()).toString());
        } else
        {
            advance();
            return;
        }
    }

    private boolean fillBuffer(int i)
    {
        int j = 0;
        while (j < pos) 
        {
            if (buffer[j] == '\n')
            {
                bufferStartLine = 1 + bufferStartLine;
                bufferStartColumn = 1;
            } else
            {
                bufferStartColumn = 1 + bufferStartColumn;
            }
            j++;
        }
        boolean flag;
        if (limit != pos)
        {
            limit = limit - pos;
            System.arraycopy(buffer, pos, buffer, 0, limit);
        } else
        {
            limit = 0;
        }
        pos = 0;
        do
        {
            int k = in.read(buffer, limit, buffer.length - limit);
            flag = false;
            if (k == -1)
            {
                break;
            }
            limit = k + limit;
            if (bufferStartLine == 1 && bufferStartColumn == 1 && limit > 0 && buffer[0] == '\uFEFF')
            {
                pos = 1 + pos;
                bufferStartColumn = -1 + bufferStartColumn;
            }
            if (limit < i)
            {
                continue;
            }
            flag = true;
            break;
        } while (true);
        return flag;
    }

    private int getColumnNumber()
    {
        int i = bufferStartColumn;
        int j = 0;
        while (j < pos) 
        {
            if (buffer[j] == '\n')
            {
                i = 1;
            } else
            {
                i++;
            }
            j++;
        }
        return i;
    }

    private int getLineNumber()
    {
        int i = bufferStartLine;
        for (int j = 0; j < pos; j++)
        {
            if (buffer[j] == '\n')
            {
                i++;
            }
        }

        return i;
    }

    private CharSequence getSnippet()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = Math.min(pos, 20);
        stringbuilder.append(buffer, pos - i, i);
        int j = Math.min(limit - pos, 20);
        stringbuilder.append(buffer, pos, j);
        return stringbuilder;
    }

    private JsonToken nextInArray(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        replaceTop(JsonScope.NONEMPTY_ARRAY);
_L4:
        switch (nextNonWhitespace())
        {
        default:
            pos = -1 + pos;
            return nextValue();

        case 93: // ']'
            if (flag)
            {
                pop();
                hasToken = true;
                JsonToken jsontoken1 = JsonToken.END_ARRAY;
                token = jsontoken1;
                return jsontoken1;
            }
            // fall through

        case 44: // ','
        case 59: // ';'
            checkLenient();
            pos = -1 + pos;
            hasToken = true;
            value = "null";
            JsonToken jsontoken = JsonToken.NULL;
            token = jsontoken;
            return jsontoken;
        }
_L2:
        switch (nextNonWhitespace())
        {
        default:
            throw syntaxError("Unterminated array");

        case 93: // ']'
            pop();
            hasToken = true;
            JsonToken jsontoken2 = JsonToken.END_ARRAY;
            token = jsontoken2;
            return jsontoken2;

        case 59: // ';'
            checkLenient();
            break;

        case 44: // ','
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private JsonToken nextInObject(boolean flag)
    {
        if (flag)
        {
            switch (nextNonWhitespace())
            {
            default:
                pos = -1 + pos;
                do
                {
                    int i = nextNonWhitespace();
                    JsonToken jsontoken;
                    JsonToken jsontoken2;
                    switch (i)
                    {
                    default:
                        checkLenient();
                        pos = -1 + pos;
                        name = nextLiteral();
                        if (name.length() == 0)
                        {
                            throw syntaxError("Expected name");
                        }
                        break;

                    case 39: // '\''
                        checkLenient();
                        // fall through

                    case 34: // '"'
                        name = nextString((char)i);
                        break;
                    }
                    replaceTop(JsonScope.DANGLING_NAME);
                    hasToken = true;
                    JsonToken jsontoken1 = JsonToken.NAME;
                    token = jsontoken1;
                    return jsontoken1;
                } while (true);

            case 125: // '}'
                pop();
                hasToken = true;
                jsontoken2 = JsonToken.END_OBJECT;
                token = jsontoken2;
                return jsontoken2;
            }
        } else
        {
            switch (nextNonWhitespace())
            {
            default:
                throw syntaxError("Unterminated object");

            case 125: // '}'
                pop();
                hasToken = true;
                jsontoken = JsonToken.END_OBJECT;
                token = jsontoken;
                return jsontoken;

            case 44: // ','
            case 59: // ';'
                break;
            }
            continue;
        }
    }

    private String nextLiteral()
    {
        StringBuilder stringbuilder = null;
_L7:
        int i = pos;
_L5:
        char ac[];
        int j;
        if (pos >= limit)
        {
            break; /* Loop/switch isn't completed */
        }
        ac = buffer;
        j = pos;
        pos = j + 1;
        ac[j];
        JVM INSTR lookupswitch 16: default 180
    //                   9: 183
    //                   10: 183
    //                   12: 183
    //                   13: 183
    //                   32: 183
    //                   35: 203
    //                   44: 183
    //                   47: 203
    //                   58: 183
    //                   59: 203
    //                   61: 203
    //                   91: 183
    //                   92: 203
    //                   93: 183
    //                   123: 183
    //                   125: 183;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L3 _L2 _L3 _L2 _L3 _L3 _L2 _L3 _L2 _L2 _L2
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        checkLenient();
          goto _L2
        if (true) goto _L5; else goto _L4
_L2:
        pos = -1 + pos;
        if (skipping)
        {
            return "skipped!";
        }
        if (stringbuilder == null)
        {
            return stringPool.get(buffer, i, pos - i);
        } else
        {
            stringbuilder.append(buffer, i, pos - i);
            return stringbuilder.toString();
        }
_L4:
        if (stringbuilder == null)
        {
            stringbuilder = new StringBuilder();
        }
        stringbuilder.append(buffer, i, pos - i);
        if (!fillBuffer(1))
        {
            return stringbuilder.toString();
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private int nextNonWhitespace()
    {
_L9:
        if (pos >= limit && !fillBuffer(1)) goto _L2; else goto _L1
_L1:
        char c;
        char ac[] = buffer;
        int i = pos;
        pos = i + 1;
        c = ac[i];
        c;
        JVM INSTR lookupswitch 6: default 100
    //                   9: 0
    //                   10: 0
    //                   13: 0
    //                   32: 0
    //                   35: 220
    //                   47: 102;
           goto _L3 _L4 _L4 _L4 _L4 _L5 _L6
_L4:
        continue; /* Loop/switch isn't completed */
_L3:
        return c;
_L6:
        if (pos == limit && !fillBuffer(1)) goto _L3; else goto _L7
_L7:
        checkLenient();
        switch (buffer[pos])
        {
        default:
            return c;

        case 42: // '*'
            pos = 1 + pos;
            if (!skipTo("*/"))
            {
                throw syntaxError("Unterminated comment");
            }
            pos = 2 + pos;
            break;

        case 47: // '/'
            pos = 1 + pos;
            skipToEndOfLine();
            break;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        checkLenient();
        skipToEndOfLine();
        continue; /* Loop/switch isn't completed */
_L2:
        throw new EOFException("End of input");
        if (true) goto _L9; else goto _L8
_L8:
    }

    private String nextString(char c)
    {
        StringBuilder stringbuilder = null;
        do
        {
            int i = pos;
            while (pos < limit) 
            {
                char ac[] = buffer;
                int j = pos;
                pos = j + 1;
                char c1 = ac[j];
                if (c1 == c)
                {
                    if (skipping)
                    {
                        return "skipped!";
                    }
                    if (stringbuilder == null)
                    {
                        return stringPool.get(buffer, i, -1 + (pos - i));
                    } else
                    {
                        stringbuilder.append(buffer, i, -1 + (pos - i));
                        return stringbuilder.toString();
                    }
                }
                StringBuilder stringbuilder1;
                int l;
                int i1;
                if (c1 == '\\')
                {
                    if (stringbuilder == null)
                    {
                        stringbuilder = new StringBuilder();
                    }
                    stringbuilder.append(buffer, i, -1 + (pos - i));
                    stringbuilder.append(readEscapeCharacter());
                    int j1 = pos;
                    stringbuilder1 = stringbuilder;
                    l = j1;
                } else
                {
                    int k = i;
                    stringbuilder1 = stringbuilder;
                    l = k;
                }
                i1 = l;
                stringbuilder = stringbuilder1;
                i = i1;
            }
            if (stringbuilder == null)
            {
                stringbuilder = new StringBuilder();
            }
            stringbuilder.append(buffer, i, pos - i);
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private JsonToken nextValue()
    {
        int i = nextNonWhitespace();
        switch (i)
        {
        default:
            pos = -1 + pos;
            return readLiteral();

        case 123: // '{'
            push(JsonScope.EMPTY_OBJECT);
            hasToken = true;
            JsonToken jsontoken2 = JsonToken.BEGIN_OBJECT;
            token = jsontoken2;
            return jsontoken2;

        case 91: // '['
            push(JsonScope.EMPTY_ARRAY);
            hasToken = true;
            JsonToken jsontoken1 = JsonToken.BEGIN_ARRAY;
            token = jsontoken1;
            return jsontoken1;

        case 39: // '\''
            checkLenient();
            // fall through

        case 34: // '"'
            value = nextString((char)i);
            hasToken = true;
            JsonToken jsontoken = JsonToken.STRING;
            token = jsontoken;
            return jsontoken;
        }
    }

    private JsonToken objectValue()
    {
        switch (nextNonWhitespace())
        {
        case 59: // ';'
        case 60: // '<'
        default:
            throw syntaxError("Expected ':'");

        case 61: // '='
            checkLenient();
            if ((pos < limit || fillBuffer(1)) && buffer[pos] == '>')
            {
                pos = 1 + pos;
            }
            // fall through

        case 58: // ':'
            replaceTop(JsonScope.NONEMPTY_OBJECT);
            return nextValue();
        }
    }

    private JsonScope peekStack()
    {
        return (JsonScope)stack.get(-1 + stack.size());
    }

    private JsonScope pop()
    {
        return (JsonScope)stack.remove(-1 + stack.size());
    }

    private void push(JsonScope jsonscope)
    {
        stack.add(jsonscope);
    }

    private JsonToken quickPeek()
    {
        if (!hasToken) goto _L2; else goto _L1
_L1:
        JsonToken jsontoken1 = token;
_L14:
        return jsontoken1;
_L2:
        _cls1..SwitchMap.com.google.gson.stream.JsonScope[peekStack().ordinal()];
        JVM INSTR tableswitch 1 8: default 72
    //                   1 80
    //                   2 134
    //                   3 140
    //                   4 146
    //                   5 152
    //                   6 157
    //                   7 163
    //                   8 200;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L3:
        throw new AssertionError();
_L4:
        if (lenient)
        {
            consumeNonExecutePrefix();
        }
        replaceTop(JsonScope.NONEMPTY_DOCUMENT);
        jsontoken1 = nextValue();
        if (!lenient && jsontoken1 != JsonToken.BEGIN_ARRAY && jsontoken1 != JsonToken.BEGIN_OBJECT)
        {
            syntaxError("Expected JSON document to start with '[' or '{'");
            return jsontoken1;
        }
          goto _L12
_L5:
        return nextInArray(true);
_L6:
        return nextInArray(false);
_L7:
        return nextInObject(true);
_L8:
        return objectValue();
_L9:
        return nextInObject(false);
_L12:
        if (true) goto _L14; else goto _L13
_L13:
_L10:
        try
        {
            jsontoken1 = nextValue();
            if (!lenient)
            {
                throw syntaxError("Expected EOF");
            }
        }
        catch (EOFException eofexception)
        {
            hasToken = true;
            JsonToken jsontoken = JsonToken.END_DOCUMENT;
            token = jsontoken;
            return jsontoken;
        }
          goto _L14
_L11:
        throw new IllegalStateException("JsonReader is closed");
    }

    private char readEscapeCharacter()
    {
        if (pos == limit && !fillBuffer(1))
        {
            throw syntaxError("Unterminated escape sequence");
        }
        char ac[] = buffer;
        int i = pos;
        pos = i + 1;
        char c = ac[i];
        switch (c)
        {
        default:
            return c;

        case 117: // 'u'
            if (4 + pos > limit && !fillBuffer(4))
            {
                throw syntaxError("Unterminated escape sequence");
            } else
            {
                String s = stringPool.get(buffer, pos, 4);
                pos = 4 + pos;
                return (char)Integer.parseInt(s, 16);
            }

        case 116: // 't'
            return '\t';

        case 98: // 'b'
            return '\b';

        case 110: // 'n'
            return '\n';

        case 114: // 'r'
            return '\r';

        case 102: // 'f'
            return '\f';
        }
    }

    private JsonToken readLiteral()
    {
        String s = nextLiteral();
        if (s.length() == 0)
        {
            throw syntaxError("Expected literal value");
        } else
        {
            value = s;
            hasToken = true;
            token = null;
            return null;
        }
    }

    private void replaceTop(JsonScope jsonscope)
    {
        stack.set(-1 + stack.size(), jsonscope);
    }

    private boolean skipTo(String s)
    {
        do
        {
label0:
            {
                boolean flag;
label1:
                {
                    if (pos + s.length() > limit)
                    {
                        boolean flag1 = fillBuffer(s.length());
                        flag = false;
                        if (!flag1)
                        {
                            break label1;
                        }
                    }
                    for (int i = 0; i < s.length(); i++)
                    {
                        if (buffer[i + pos] != s.charAt(i))
                        {
                            break label0;
                        }
                    }

                    flag = true;
                }
                return flag;
            }
            pos = 1 + pos;
        } while (true);
    }

    private void skipToEndOfLine()
    {
        char c;
        do
        {
            if (pos >= limit && !fillBuffer(1))
            {
                break;
            }
            char ac[] = buffer;
            int i = pos;
            pos = i + 1;
            c = ac[i];
        } while (c != '\r' && c != '\n');
    }

    private IOException syntaxError(String s)
    {
        throw new MalformedJsonException((new StringBuilder()).append(s).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).toString());
    }

    public void beginArray()
    {
        expect(JsonToken.BEGIN_ARRAY);
    }

    public void beginObject()
    {
        expect(JsonToken.BEGIN_OBJECT);
    }

    public void close()
    {
        hasToken = false;
        value = null;
        token = null;
        stack.clear();
        stack.add(JsonScope.CLOSED);
        in.close();
    }

    public void endArray()
    {
        expect(JsonToken.END_ARRAY);
    }

    public void endObject()
    {
        expect(JsonToken.END_OBJECT);
    }

    public boolean hasNext()
    {
        quickPeek();
        return token != JsonToken.END_OBJECT && token != JsonToken.END_ARRAY;
    }

    public final boolean isLenient()
    {
        return lenient;
    }

    public boolean nextBoolean()
    {
        quickPeek();
        if (value == null || token == JsonToken.STRING)
        {
            throw new IllegalStateException((new StringBuilder("Expected a boolean but was ")).append(peek()).toString());
        }
        boolean flag;
        if (value.equalsIgnoreCase("true"))
        {
            flag = true;
        } else
        if (value.equalsIgnoreCase("false"))
        {
            flag = false;
        } else
        {
            throw new IllegalStateException((new StringBuilder("Not a boolean: ")).append(value).toString());
        }
        advance();
        return flag;
    }

    public double nextDouble()
    {
        quickPeek();
        if (value == null)
        {
            throw new IllegalStateException((new StringBuilder("Expected a double but was ")).append(peek()).toString());
        }
        double d = Double.parseDouble(value);
        if (d >= 1.0D && value.startsWith("0"))
        {
            throw new NumberFormatException((new StringBuilder("JSON forbids octal prefixes: ")).append(value).toString());
        }
        if (!lenient && (Double.isNaN(d) || Double.isInfinite(d)))
        {
            throw new NumberFormatException((new StringBuilder("JSON forbids NaN and infinities: ")).append(value).toString());
        } else
        {
            advance();
            return d;
        }
    }

    public int nextInt()
    {
        quickPeek();
        if (value == null)
        {
            throw new IllegalStateException((new StringBuilder("Expected an int but was ")).append(peek()).toString());
        }
        int j = Integer.parseInt(value);
        int i = j;
_L1:
        NumberFormatException numberformatexception;
        if ((long)i >= 1L && value.startsWith("0"))
        {
            throw new NumberFormatException((new StringBuilder("JSON forbids octal prefixes: ")).append(value).toString());
        } else
        {
            advance();
            return i;
        }
        numberformatexception;
        double d = Double.parseDouble(value);
        i = (int)d;
        if ((double)i != d)
        {
            throw new NumberFormatException(value);
        }
          goto _L1
    }

    public long nextLong()
    {
        quickPeek();
        if (value == null)
        {
            throw new IllegalStateException((new StringBuilder("Expected a long but was ")).append(peek()).toString());
        }
        long l1 = Long.parseLong(value);
        long l = l1;
_L1:
        NumberFormatException numberformatexception;
        if (l >= 1L && value.startsWith("0"))
        {
            throw new NumberFormatException((new StringBuilder("JSON forbids octal prefixes: ")).append(value).toString());
        } else
        {
            advance();
            return l;
        }
        numberformatexception;
        double d = Double.parseDouble(value);
        l = (long)d;
        if ((double)l != d)
        {
            throw new NumberFormatException(value);
        }
          goto _L1
    }

    public String nextName()
    {
        quickPeek();
        if (token != JsonToken.NAME)
        {
            throw new IllegalStateException((new StringBuilder("Expected a name but was ")).append(peek()).toString());
        } else
        {
            String s = name;
            advance();
            return s;
        }
    }

    public void nextNull()
    {
        quickPeek();
        if (value == null || token == JsonToken.STRING)
        {
            throw new IllegalStateException((new StringBuilder("Expected null but was ")).append(peek()).toString());
        }
        if (!value.equalsIgnoreCase("null"))
        {
            throw new IllegalStateException((new StringBuilder("Not a null: ")).append(value).toString());
        } else
        {
            advance();
            return;
        }
    }

    public String nextString()
    {
        peek();
        if (value == null || token != JsonToken.STRING && token != JsonToken.NUMBER)
        {
            throw new IllegalStateException((new StringBuilder("Expected a string but was ")).append(peek()).toString());
        } else
        {
            String s = value;
            advance();
            return s;
        }
    }

    public JsonToken peek()
    {
        quickPeek();
        if (token == null)
        {
            decodeLiteral();
        }
        return token;
    }

    public final void setLenient(boolean flag)
    {
        lenient = flag;
    }

    public void skipValue()
    {
        int i;
        skipping = true;
        i = 0;
_L7:
        JsonToken jsontoken = advance();
        if (jsontoken == JsonToken.BEGIN_ARRAY) goto _L2; else goto _L1
_L1:
        JsonToken jsontoken1 = JsonToken.BEGIN_OBJECT;
        if (jsontoken != jsontoken1) goto _L3; else goto _L2
_L2:
        i++;
_L5:
        if (i == 0)
        {
            skipping = false;
            return;
        }
        break; /* Loop/switch isn't completed */
_L3:
        JsonToken jsontoken2;
        if (jsontoken == JsonToken.END_ARRAY)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        jsontoken2 = JsonToken.END_OBJECT;
        if (jsontoken != jsontoken2)
        {
            continue; /* Loop/switch isn't completed */
        }
        i--;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
        skipping = false;
        throw exception;
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append(" near ").append(getSnippet()).toString();
    }


    private class _cls1
    {

        static final int $SwitchMap$com$google$gson$stream$JsonScope[];

        static 
        {
            $SwitchMap$com$google$gson$stream$JsonScope = new int[JsonScope.values().length];
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.EMPTY_DOCUMENT.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.EMPTY_ARRAY.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.NONEMPTY_ARRAY.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.EMPTY_OBJECT.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.DANGLING_NAME.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.NONEMPTY_OBJECT.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.NONEMPTY_DOCUMENT.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.CLOSED.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror7)
            {
                return;
            }
        }
    }

}
