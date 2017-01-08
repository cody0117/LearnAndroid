// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.james.mime4j.field.ContentTypeField;
import org.apache.james.mime4j.message.BodyPart;
import org.apache.james.mime4j.message.Entity;
import org.apache.james.mime4j.message.Header;
import org.apache.james.mime4j.message.MessageWriter;
import org.apache.james.mime4j.message.Multipart;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.CharsetUtil;

// Referenced classes of package org.apache.http.entity.mime:
//            MIME, HttpMultipartMode

public class HttpMultipart extends Multipart
{

    private static final ByteArrayBuffer CR_LF;
    private static final ByteArrayBuffer TWO_DASHES;
    private HttpMultipartMode mode;

    public HttpMultipart(String s)
    {
        super(s);
        mode = HttpMultipartMode.STRICT;
    }

    private void doWriteTo(HttpMultipartMode httpmultipartmode, OutputStream outputstream, boolean flag)
    {
        List list;
        Charset charset;
        ByteArrayBuffer bytearraybuffer;
        list = getBodyParts();
        charset = getCharset();
        bytearraybuffer = encode(charset, getBoundary());
        _cls1..SwitchMap.org.apache.http.entity.mime.HttpMultipartMode[httpmultipartmode.ordinal()];
        JVM INSTR tableswitch 1 2: default 52
    //                   1 53
    //                   2 294;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        String s = getPreamble();
        if (s != null && s.length() != 0)
        {
            writeBytes(encode(charset, s), outputstream);
            writeBytes(CR_LF, outputstream);
        }
        for (int j = 0; j < list.size(); j++)
        {
            writeBytes(TWO_DASHES, outputstream);
            writeBytes(bytearraybuffer, outputstream);
            writeBytes(CR_LF, outputstream);
            BodyPart bodypart1 = (BodyPart)list.get(j);
            for (Iterator iterator = bodypart1.getHeader().getFields().iterator(); iterator.hasNext(); writeBytes(CR_LF, outputstream))
            {
                writeBytes(((Field)iterator.next()).getRaw(), outputstream);
            }

            writeBytes(CR_LF, outputstream);
            if (flag)
            {
                MessageWriter.DEFAULT.writeBody(bodypart1.getBody(), outputstream);
            }
            writeBytes(CR_LF, outputstream);
        }

        writeBytes(TWO_DASHES, outputstream);
        writeBytes(bytearraybuffer, outputstream);
        writeBytes(TWO_DASHES, outputstream);
        writeBytes(CR_LF, outputstream);
        String s1 = getEpilogue();
        if (s1 != null && s1.length() != 0)
        {
            writeBytes(encode(charset, s1), outputstream);
            writeBytes(CR_LF, outputstream);
            return;
        }
          goto _L1
_L3:
        for (int i = 0; i < list.size(); i++)
        {
            writeBytes(TWO_DASHES, outputstream);
            writeBytes(bytearraybuffer, outputstream);
            writeBytes(CR_LF, outputstream);
            BodyPart bodypart = (BodyPart)list.get(i);
            Field field = bodypart.getHeader().getField("Content-Disposition");
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append(field.getName());
            stringbuilder.append(": ");
            stringbuilder.append(field.getBody());
            writeBytes(encode(charset, stringbuilder.toString()), outputstream);
            writeBytes(CR_LF, outputstream);
            writeBytes(CR_LF, outputstream);
            if (flag)
            {
                MessageWriter.DEFAULT.writeBody(bodypart.getBody(), outputstream);
            }
            writeBytes(CR_LF, outputstream);
        }

        writeBytes(TWO_DASHES, outputstream);
        writeBytes(bytearraybuffer, outputstream);
        writeBytes(TWO_DASHES, outputstream);
        writeBytes(CR_LF, outputstream);
        return;
    }

    private static ByteArrayBuffer encode(Charset charset, String s)
    {
        ByteBuffer bytebuffer = charset.encode(CharBuffer.wrap(s));
        ByteArrayBuffer bytearraybuffer = new ByteArrayBuffer(bytebuffer.remaining());
        bytearraybuffer.append(bytebuffer.array(), bytebuffer.position(), bytebuffer.remaining());
        return bytearraybuffer;
    }

    private static void writeBytes(ByteArrayBuffer bytearraybuffer, OutputStream outputstream)
    {
        outputstream.write(bytearraybuffer.buffer(), 0, bytearraybuffer.length());
    }

    private static void writeBytes(ByteSequence bytesequence, OutputStream outputstream)
    {
        if (bytesequence instanceof ByteArrayBuffer)
        {
            writeBytes((ByteArrayBuffer)bytesequence, outputstream);
            return;
        } else
        {
            outputstream.write(bytesequence.toByteArray());
            return;
        }
    }

    protected String getBoundary()
    {
        return ((ContentTypeField)getParent().getHeader().getField("Content-Type")).getBoundary();
    }

    protected Charset getCharset()
    {
        ContentTypeField contenttypefield = (ContentTypeField)getParent().getHeader().getField("Content-Type");
        switch (_cls1..SwitchMap.org.apache.http.entity.mime.HttpMultipartMode[mode.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return MIME.DEFAULT_CHARSET;

        case 2: // '\002'
            break;
        }
        if (contenttypefield.getCharset() != null)
        {
            return CharsetUtil.getCharset(contenttypefield.getCharset());
        } else
        {
            return CharsetUtil.getCharset("ISO-8859-1");
        }
    }

    public HttpMultipartMode getMode()
    {
        return mode;
    }

    public long getTotalLength()
    {
        List list = getBodyParts();
        int i = 0;
        long l = 0L;
        while (i < list.size()) 
        {
            org.apache.james.mime4j.message.Body body = ((BodyPart)list.get(i)).getBody();
            if (body instanceof ContentBody)
            {
                long l1 = ((ContentBody)body).getContentLength();
                if (l1 >= 0L)
                {
                    l += l1;
                    i++;
                } else
                {
                    return -1L;
                }
            } else
            {
                return -1L;
            }
        }
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        int j;
        try
        {
            doWriteTo(mode, bytearrayoutputstream, false);
            j = bytearrayoutputstream.toByteArray().length;
        }
        catch (IOException ioexception)
        {
            return -1L;
        }
        return l + (long)j;
    }

    public void setMode(HttpMultipartMode httpmultipartmode)
    {
        mode = httpmultipartmode;
    }

    public void writeTo(OutputStream outputstream)
    {
        doWriteTo(mode, outputstream, true);
    }

    static 
    {
        CR_LF = encode(MIME.DEFAULT_CHARSET, "\r\n");
        TWO_DASHES = encode(MIME.DEFAULT_CHARSET, "--");
    }

    private class _cls1
    {

        static final int $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode[];

        static 
        {
            $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode = new int[HttpMultipartMode.values().length];
            try
            {
                $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode[HttpMultipartMode.STRICT.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode[HttpMultipartMode.BROWSER_COMPATIBLE.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }

}
