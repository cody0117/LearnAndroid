// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapter, TypeAdapterRuntimeTypeWrapper, MapTypeAdapterFactory, MiniGson

final class constructor extends TypeAdapter
{

    private final ObjectConstructor constructor;
    private final TypeAdapter keyTypeAdapter;
    final MapTypeAdapterFactory this$0;
    private final TypeAdapter valueTypeAdapter;

    private String keyToString(JsonElement jsonelement)
    {
        if (jsonelement.isJsonPrimitive())
        {
            JsonPrimitive jsonprimitive = jsonelement.getAsJsonPrimitive();
            if (jsonprimitive.isNumber())
            {
                return String.valueOf(jsonprimitive.getAsNumber());
            }
            if (jsonprimitive.isBoolean())
            {
                return Boolean.toString(jsonprimitive.getAsBoolean());
            }
            if (jsonprimitive.isString())
            {
                return jsonprimitive.getAsString();
            } else
            {
                throw new AssertionError();
            }
        }
        if (jsonelement.isJsonNull())
        {
            return "null";
        } else
        {
            throw new AssertionError();
        }
    }

    public final volatile Object read(JsonReader jsonreader)
    {
        return read(jsonreader);
    }

    public final Map read(JsonReader jsonreader)
    {
        JsonToken jsontoken = jsonreader.peek();
        if (jsontoken == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        }
        Map map = (Map)constructor.construct();
        if (jsontoken == JsonToken.BEGIN_ARRAY)
        {
            jsonreader.beginArray();
            for (; jsonreader.hasNext(); jsonreader.endArray())
            {
                jsonreader.beginArray();
                Object obj1 = keyTypeAdapter.read(jsonreader);
                if (map.put(obj1, valueTypeAdapter.read(jsonreader)) != null)
                {
                    throw new JsonSyntaxException((new StringBuilder("duplicate key: ")).append(obj1).toString());
                }
            }

            jsonreader.endArray();
            return map;
        }
        jsonreader.beginObject();
        while (jsonreader.hasNext()) 
        {
            String s = jsonreader.nextName();
            Object obj = keyTypeAdapter.fromJsonElement(new JsonPrimitive(s));
            if (map.put(obj, valueTypeAdapter.read(jsonreader)) != null)
            {
                throw new JsonSyntaxException((new StringBuilder("duplicate key: ")).append(obj).toString());
            }
        }
        jsonreader.endObject();
        return map;
    }

    public final volatile void write(JsonWriter jsonwriter, Object obj)
    {
        write(jsonwriter, (Map)obj);
    }

    public final void write(JsonWriter jsonwriter, Map map)
    {
        int i = 0;
        if (map == null)
        {
            jsonwriter.nullValue();
            return;
        }
        if (!MapTypeAdapterFactory.access$000(MapTypeAdapterFactory.this))
        {
            jsonwriter.beginObject();
            java.util.pterFactory pterfactory1;
            for (Iterator iterator1 = map.entrySet().iterator(); iterator1.hasNext(); valueTypeAdapter.write(jsonwriter, pterfactory1.write()))
            {
                pterfactory1 = (java.util.r.write)iterator1.next();
                jsonwriter.name(String.valueOf(pterfactory1.write()));
            }

            jsonwriter.endObject();
            return;
        }
        ArrayList arraylist = new ArrayList(map.size());
        ArrayList arraylist1 = new ArrayList(map.size());
        Iterator iterator = map.entrySet().iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            java.util.pterFactory pterfactory = (java.util.ect)iterator.next();
            JsonElement jsonelement = keyTypeAdapter.toJsonElement(pterfactory.toJsonElement());
            arraylist.add(jsonelement);
            arraylist1.add(pterfactory.toJsonElement());
            boolean flag1;
            if (jsonelement.isJsonArray() || jsonelement.isJsonObject())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag = flag1 | flag;
        }
        if (flag)
        {
            jsonwriter.beginArray();
            for (; i < arraylist.size(); i++)
            {
                jsonwriter.beginArray();
                Streams.write((JsonElement)arraylist.get(i), jsonwriter);
                valueTypeAdapter.write(jsonwriter, arraylist1.get(i));
                jsonwriter.endArray();
            }

            jsonwriter.endArray();
            return;
        }
        jsonwriter.beginObject();
        for (; i < arraylist.size(); i++)
        {
            jsonwriter.name(keyToString((JsonElement)arraylist.get(i)));
            valueTypeAdapter.write(jsonwriter, arraylist1.get(i));
        }

        jsonwriter.endObject();
    }

    public A(MiniGson minigson, Type type, TypeAdapter typeadapter, Type type1, TypeAdapter typeadapter1, ObjectConstructor objectconstructor)
    {
        this$0 = MapTypeAdapterFactory.this;
        super();
        keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(minigson, typeadapter, type);
        valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(minigson, typeadapter1, type1);
        constructor = objectconstructor;
    }
}
