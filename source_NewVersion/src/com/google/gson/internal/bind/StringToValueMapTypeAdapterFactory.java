// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.ParameterizedType;
import java.util.Map;

// Referenced classes of package com.google.gson.internal.bind:
//            MiniGson, TypeAdapter

public final class StringToValueMapTypeAdapterFactory
    implements TypeAdapter.Factory
{

    private final ConstructorConstructor constructorConstructor;

    public StringToValueMapTypeAdapterFactory(ConstructorConstructor constructorconstructor)
    {
        constructorConstructor = constructorconstructor;
    }

    public final TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        java.lang.reflect.Type type = typetoken.getType();
        Class class1;
        java.lang.reflect.Type atype[];
        if (type instanceof ParameterizedType)
        {
            if (java/util/Map.isAssignableFrom(class1 = typetoken.getRawType()) && (atype = com.google.gson.internal..Gson.Types.getMapKeyAndValueTypes(type, class1))[0] == java/lang/String)
            {
                return new Adapter(minigson.getAdapter(TypeToken.get(atype[1])), constructorConstructor.getConstructor(typetoken));
            }
        }
        return null;
    }

    private class Adapter extends TypeAdapter
    {

        private final ObjectConstructor constructor;
        final StringToValueMapTypeAdapterFactory this$0;
        private final TypeAdapter valueTypeAdapter;

        public final volatile Object read(JsonReader jsonreader)
        {
            return read(jsonreader);
        }

        public final Map read(JsonReader jsonreader)
        {
            if (jsonreader.peek() == JsonToken.NULL)
            {
                jsonreader.nextNull();
                return null;
            }
            Map map = (Map)constructor.construct();
            jsonreader.beginObject();
            for (; jsonreader.hasNext(); map.put(jsonreader.nextName(), valueTypeAdapter.read(jsonreader))) { }
            jsonreader.endObject();
            return map;
        }

        public final volatile void write(JsonWriter jsonwriter, Object obj)
        {
            write(jsonwriter, (Map)obj);
        }

        public final void write(JsonWriter jsonwriter, Map map)
        {
            if (map == null)
            {
                jsonwriter.nullValue();
                return;
            }
            jsonwriter.beginObject();
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); valueTypeAdapter.write(jsonwriter, entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
                jsonwriter.name((String)entry.getKey());
            }

            jsonwriter.endObject();
        }

        public Adapter(TypeAdapter typeadapter, ObjectConstructor objectconstructor)
        {
            this$0 = StringToValueMapTypeAdapterFactory.this;
            super();
            valueTypeAdapter = typeadapter;
            constructor = objectconstructor;
        }
    }

}
