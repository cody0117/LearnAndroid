// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package au.com.bytecode.opencsv;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CSVParser
{

    public static final char DEFAULT_ESCAPE_CHARACTER = 92;
    public static final boolean DEFAULT_IGNORE_LEADING_WHITESPACE = true;
    public static final char DEFAULT_QUOTE_CHARACTER = 34;
    public static final char DEFAULT_SEPARATOR = 44;
    public static final boolean DEFAULT_STRICT_QUOTES = false;
    public static final int INITIAL_READ_SIZE = 128;
    public static final char NULL_CHARACTER;
    private final char escape;
    private final boolean ignoreLeadingWhiteSpace;
    private boolean inField;
    private String pending;
    private final char quotechar;
    private final char separator;
    private final boolean strictQuotes;

    public CSVParser()
    {
        this(',', '"', '\\');
    }

    public CSVParser(char c)
    {
        this(c, '"', '\\');
    }

    public CSVParser(char c, char c1)
    {
        this(c, c1, '\\');
    }

    public CSVParser(char c, char c1, char c2)
    {
        this(c, c1, c2, false);
    }

    public CSVParser(char c, char c1, char c2, boolean flag)
    {
        this(c, c1, c2, flag, true);
    }

    public CSVParser(char c, char c1, char c2, boolean flag, boolean flag1)
    {
        inField = false;
        if (anyCharactersAreTheSame(c, c1, c2))
        {
            throw new UnsupportedOperationException("The separator, quote, and escape characters must be different!");
        }
        if (c == 0)
        {
            throw new UnsupportedOperationException("The separator character must be defined!");
        } else
        {
            separator = c;
            quotechar = c1;
            escape = c2;
            strictQuotes = flag;
            ignoreLeadingWhiteSpace = flag1;
            return;
        }
    }

    private boolean anyCharactersAreTheSame(char c, char c1, char c2)
    {
        return isSameCharacter(c, c1) || isSameCharacter(c, c2) || isSameCharacter(c1, c2);
    }

    private boolean isNextCharacterEscapedQuote(String s, boolean flag, int i)
    {
        return flag && s.length() > i + 1 && s.charAt(i + 1) == quotechar;
    }

    private boolean isSameCharacter(char c, char c1)
    {
        return c != 0 && c == c1;
    }

    private String[] parseLine(String s, boolean flag)
    {
        StringBuilder stringbuilder = null;
        if (!flag && pending != null)
        {
            pending = null;
        }
        if (s == null)
        {
            if (pending != null)
            {
                String s1 = pending;
                pending = null;
                return (new String[] {
                    s1
                });
            } else
            {
                return null;
            }
        }
        ArrayList arraylist = new ArrayList();
        StringBuilder stringbuilder1 = new StringBuilder(128);
        boolean flag1;
        boolean flag2;
        int i;
        if (pending != null)
        {
            stringbuilder1.append(pending);
            pending = null;
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag2 = flag1;
        i = 0;
        while (i < s.length()) 
        {
            char c = s.charAt(i);
            if (c == escape)
            {
                boolean flag5;
                if (flag2 || inField)
                {
                    flag5 = true;
                } else
                {
                    flag5 = false;
                }
                if (isNextCharacterEscapable(s, flag5, i))
                {
                    stringbuilder1.append(s.charAt(i + 1));
                    i++;
                }
            } else
            if (c == quotechar)
            {
                boolean flag3;
                boolean flag4;
                if (flag2 || inField)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                if (isNextCharacterEscapedQuote(s, flag3, i))
                {
                    stringbuilder1.append(s.charAt(i + 1));
                    i++;
                } else
                {
                    if (!strictQuotes && i > 2 && s.charAt(i - 1) != separator && s.length() > i + 1 && s.charAt(i + 1) != separator)
                    {
                        if (ignoreLeadingWhiteSpace && stringbuilder1.length() > 0 && isAllWhiteSpace(stringbuilder1))
                        {
                            stringbuilder1.setLength(0);
                        } else
                        {
                            stringbuilder1.append(c);
                        }
                    }
                    if (!flag2)
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                }
                if (!inField)
                {
                    flag4 = true;
                } else
                {
                    flag4 = false;
                }
                inField = flag4;
            } else
            if (c == separator && !flag2)
            {
                arraylist.add(stringbuilder1.toString());
                stringbuilder1.setLength(0);
                inField = false;
            } else
            if (!strictQuotes || flag2)
            {
                stringbuilder1.append(c);
                inField = true;
            }
            i++;
        }
        if (!flag2) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        stringbuilder1.append("\n");
        pending = stringbuilder1.toString();
_L6:
        if (stringbuilder != null)
        {
            arraylist.add(stringbuilder.toString());
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
_L4:
        throw new IOException("Un-terminated quoted field at end of CSV line");
_L2:
        stringbuilder = stringbuilder1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected boolean isAllWhiteSpace(CharSequence charsequence)
    {
        for (int i = 0; i < charsequence.length(); i++)
        {
            if (!Character.isWhitespace(charsequence.charAt(i)))
            {
                return false;
            }
        }

        return true;
    }

    protected boolean isNextCharacterEscapable(String s, boolean flag, int i)
    {
        return flag && s.length() > i + 1 && (s.charAt(i + 1) == quotechar || s.charAt(i + 1) == escape);
    }

    public boolean isPending()
    {
        return pending != null;
    }

    public String[] parseLine(String s)
    {
        return parseLine(s, false);
    }

    public String[] parseLineMulti(String s)
    {
        return parseLine(s, true);
    }
}
