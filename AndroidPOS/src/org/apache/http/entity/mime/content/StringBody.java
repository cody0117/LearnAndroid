// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime.content;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package org.apache.http.entity.mime.content:
//            AbstractContentBody

public class StringBody extends AbstractContentBody
{

    private final Charset charset;
    private final byte content[];

    public StringBody(String s)
    {
        this(s, "text/plain", null);
    }

    public StringBody(String s, String s1, Charset charset1)
    {
        super(s1);
        if (s == null)
        {
            throw new IllegalArgumentException("Text may not be null");
        }
        if (charset1 == null)
        {
            charset1 = Charset.defaultCharset();
        }
        content = s.getBytes(charset1.name());
        charset = charset1;
    }

    public StringBody(String s, Charset charset1)
    {
        this(s, "text/plain", charset1);
    }

    public String getCharset()
    {
        return charset.name();
    }

    public long getContentLength()
    {
        return (long)content.length;
    }

    public Map getContentTypeParameters()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("charset", charset.name());
        return hashmap;
    }

    public String getFilename()
    {
        return null;
    }

    public Reader getReader()
    {
        return new InputStreamReader(new ByteArrayInputStream(content), charset);
    }

    public String getTransferEncoding()
    {
        return "8bit";
    }

    public void writeTo(OutputStream outputstream)
    {
        if (outputstream == null)
        {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(content);
        byte abyte0[] = new byte[4096];
        do
        {
            int i = bytearrayinputstream.read(abyte0);
            if (i != -1)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                outputstream.flush();
                return;
            }
        } while (true);
    }

    public void writeTo(OutputStream outputstream, int i)
    {
        writeTo(outputstream);
    }
}
