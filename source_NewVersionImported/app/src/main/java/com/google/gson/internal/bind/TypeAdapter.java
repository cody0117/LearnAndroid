// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

// Referenced classes of package com.google.gson.internal.bind:
//            JsonElementReader, JsonElementWriter

public abstract class TypeAdapter
{

    public TypeAdapter()
    {
    }

    public final Object fromJson(String s)
    {
        return read(new StringReader(s));
    }

    public Object fromJsonElement(JsonElement jsonelement)
    {
        Object obj;
        try
        {
            JsonElementReader jsonelementreader = new JsonElementReader(jsonelement);
            jsonelementreader.setLenient(true);
            obj = read(jsonelementreader);
        }
        catch (IOException ioexception)
        {
            throw new JsonIOException(ioexception);
        }
        return obj;
    }

    public abstract Object read(JsonReader jsonreader);

    public final Object read(Reader reader)
    {
        JsonReader jsonreader = new JsonReader(reader);
        jsonreader.setLenient(true);
        return read(jsonreader);
    }

    public final String toJson(Object obj)
    {
        StringWriter stringwriter = new StringWriter();
        write(stringwriter, obj);
        return stringwriter.toString();
    }

    public JsonElement toJsonElement(Object obj)
    {
        JsonElement jsonelement;
        try
        {
            JsonElementWriter jsonelementwriter = new JsonElementWriter();
            jsonelementwriter.setLenient(true);
            write(jsonelementwriter, obj);
            jsonelement = jsonelementwriter.get();
        }
        catch (IOException ioexception)
        {
            throw new JsonIOException(ioexception);
        }
        return jsonelement;
    }

    public abstract void write(JsonWriter jsonwriter, Object obj);

    public final void write(Writer writer, Object obj)
    {
        write(new JsonWriter(writer), obj);
    }
}
