// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.net.InetAddress;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapter

class  extends TypeAdapter
{

    public volatile Object read(JsonReader jsonreader)
    {
        return read(jsonreader);
    }

    public InetAddress read(JsonReader jsonreader)
    {
        if (jsonreader.peek() == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        } else
        {
            return InetAddress.getByName(jsonreader.nextString());
        }
    }

    public volatile void write(JsonWriter jsonwriter, Object obj)
    {
        write(jsonwriter, (InetAddress)obj);
    }

    public void write(JsonWriter jsonwriter, InetAddress inetaddress)
    {
        String s;
        if (inetaddress == null)
        {
            s = null;
        } else
        {
            s = inetaddress.getHostAddress();
        }
        jsonwriter.value(s);
    }

    ()
    {
    }
}
