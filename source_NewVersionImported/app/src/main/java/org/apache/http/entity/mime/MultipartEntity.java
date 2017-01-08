// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.message.BasicHeader;
import org.apache.james.mime4j.field.Fields;
import org.apache.james.mime4j.message.Header;
import org.apache.james.mime4j.message.Message;

// Referenced classes of package org.apache.http.entity.mime:
//            HttpMultipartMode, HttpMultipart, FormBodyPart

public class MultipartEntity
    implements HttpEntity
{

    private static final char MULTIPART_CHARS[] = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private final org.apache.http.Header contentType;
    private volatile boolean dirty;
    private long length;
    private final Message message;
    private final HttpMultipart multipart;

    public MultipartEntity()
    {
        this(HttpMultipartMode.STRICT, null, null);
    }

    public MultipartEntity(HttpMultipartMode httpmultipartmode)
    {
        this(httpmultipartmode, null, null);
    }

    public MultipartEntity(HttpMultipartMode httpmultipartmode, String s, Charset charset)
    {
        multipart = new HttpMultipart("form-data");
        contentType = new BasicHeader("Content-Type", generateContentType(s, charset));
        dirty = true;
        message = new Message();
        Header header = new Header();
        message.setHeader(header);
        multipart.setParent(message);
        if (httpmultipartmode == null)
        {
            httpmultipartmode = HttpMultipartMode.STRICT;
        }
        multipart.setMode(httpmultipartmode);
        message.getHeader().addField(Fields.contentType(contentType.getValue()));
    }

    public void addPart(String s, ContentBody contentbody)
    {
        multipart.addBodyPart(new FormBodyPart(s, contentbody));
        dirty = true;
    }

    public void consumeContent()
    {
        if (isStreaming())
        {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        } else
        {
            return;
        }
    }

    protected String generateContentType(String s, Charset charset)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("multipart/form-data; boundary=");
        if (s != null)
        {
            stringbuilder.append(s);
        } else
        {
            Random random = new Random();
            int i = 30 + random.nextInt(11);
            int j = 0;
            while (j < i) 
            {
                stringbuilder.append(MULTIPART_CHARS[random.nextInt(MULTIPART_CHARS.length)]);
                j++;
            }
        }
        if (charset != null)
        {
            stringbuilder.append("; charset=");
            stringbuilder.append(charset.name());
        }
        return stringbuilder.toString();
    }

    public InputStream getContent()
    {
        throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
    }

    public org.apache.http.Header getContentEncoding()
    {
        return null;
    }

    public long getContentLength()
    {
        if (dirty)
        {
            length = multipart.getTotalLength();
            dirty = false;
        }
        return length;
    }

    public org.apache.http.Header getContentType()
    {
        return contentType;
    }

    public boolean isChunked()
    {
        return !isRepeatable();
    }

    public boolean isRepeatable()
    {
        for (Iterator iterator = multipart.getBodyParts().iterator(); iterator.hasNext();)
        {
            if (((ContentBody)((FormBodyPart)iterator.next()).getBody()).getContentLength() < 0L)
            {
                return false;
            }
        }

        return true;
    }

    public boolean isStreaming()
    {
        return !isRepeatable();
    }

    public void writeTo(OutputStream outputstream)
    {
        multipart.writeTo(outputstream);
    }

}
