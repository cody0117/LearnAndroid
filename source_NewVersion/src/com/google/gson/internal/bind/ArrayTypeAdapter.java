// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapter, TypeAdapterRuntimeTypeWrapper, MiniGson

public final class ArrayTypeAdapter extends TypeAdapter
{

    public static final TypeAdapter.Factory FACTORY = new _cls1();
    private final Class componentType;
    private final TypeAdapter componentTypeAdapter;

    public ArrayTypeAdapter(MiniGson minigson, TypeAdapter typeadapter, Class class1)
    {
        componentTypeAdapter = new TypeAdapterRuntimeTypeWrapper(minigson, typeadapter, class1);
        componentType = class1;
    }

    public final Object read(JsonReader jsonreader)
    {
        if (jsonreader.peek() == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        }
        ArrayList arraylist = new ArrayList();
        jsonreader.beginArray();
        for (; jsonreader.hasNext(); arraylist.add(componentTypeAdapter.read(jsonreader))) { }
        jsonreader.endArray();
        Object obj = Array.newInstance(componentType, arraylist.size());
        for (int i = 0; i < arraylist.size(); i++)
        {
            Array.set(obj, i, arraylist.get(i));
        }

        return obj;
    }

    public final void write(JsonWriter jsonwriter, Object obj)
    {
        if (obj == null)
        {
            jsonwriter.nullValue();
            return;
        }
        jsonwriter.beginArray();
        int i = 0;
        for (int j = Array.getLength(obj); i < j; i++)
        {
            Object obj1 = Array.get(obj, i);
            componentTypeAdapter.write(jsonwriter, obj1);
        }

        jsonwriter.endArray();
    }


    private class _cls1
        implements TypeAdapter.Factory
    {

        public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
        {
            java.lang.reflect.Type type = typetoken.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class)type).isArray()))
            {
                return null;
            } else
            {
                java.lang.reflect.Type type1 = com.google.gson.internal..Gson.Types.getArrayComponentType(type);
                return new ArrayTypeAdapter(minigson, minigson.getAdapter(TypeToken.get(type1)), com.google.gson.internal..Gson.Types.getRawType(type1));
            }
        }

        _cls1()
        {
        }
    }

}