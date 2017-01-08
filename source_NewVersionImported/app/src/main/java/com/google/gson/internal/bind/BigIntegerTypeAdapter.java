// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.math.BigInteger;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapter

public final class BigIntegerTypeAdapter extends TypeAdapter
{

    public BigIntegerTypeAdapter()
    {
    }

    public final volatile Object read(JsonReader jsonreader)
    {
        return read(jsonreader);
    }

    public final BigInteger read(JsonReader jsonreader)
    {
        if (jsonreader.peek() == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        }
        BigInteger biginteger;
        try
        {
            biginteger = new BigInteger(jsonreader.nextString());
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new JsonSyntaxException(numberformatexception);
        }
        return biginteger;
    }

    public final void write(JsonWriter jsonwriter, Object obj)
    {
        jsonwriter.value((BigInteger)obj);
    }

    public final void write(JsonWriter jsonwriter, BigInteger biginteger)
    {
        jsonwriter.value(biginteger);
    }
}
