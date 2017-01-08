// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Map;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapters, MiniGson, TypeAdapter

public final class MapTypeAdapterFactory
    implements TypeAdapter.Factory
{

    private final boolean complexMapKeySerialization;
    private final ConstructorConstructor constructorConstructor;

    public MapTypeAdapterFactory(ConstructorConstructor constructorconstructor, boolean flag)
    {
        constructorConstructor = constructorconstructor;
        complexMapKeySerialization = flag;
    }

    private TypeAdapter getKeyAdapter(MiniGson minigson, Type type)
    {
        if (type == Boolean.TYPE || type == java/lang/Boolean)
        {
            return TypeAdapters.BOOLEAN_AS_STRING;
        } else
        {
            return minigson.getAdapter(TypeToken.get(type));
        }
    }

    public final TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        Type type = typetoken.getType();
        if (!java/util/Map.isAssignableFrom(typetoken.getRawType()))
        {
            return null;
        } else
        {
            Type atype[] = com.google.gson.internal..Gson.Types.getMapKeyAndValueTypes(type, com.google.gson.internal..Gson.Types.getRawType(type));
            TypeAdapter typeadapter = getKeyAdapter(minigson, atype[0]);
            TypeAdapter typeadapter1 = minigson.getAdapter(TypeToken.get(atype[1]));
            ObjectConstructor objectconstructor = constructorConstructor.getConstructor(typetoken);
            return new Adapter(minigson, atype[0], typeadapter, atype[1], typeadapter1, objectconstructor);
        }
    }


    private class Adapter extends TypeAdapter
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
            if (!complexMapKeySerialization)
            {
                jsonwriter.beginObject();
                java.util.Map.Entry entry1;
                for (Iterator iterator1 = map.entrySet().iterator(); iterator1.hasNext(); valueTypeAdapter.write(jsonwriter, entry1.getValue()))
                {
                    entry1 = (java.util.Map.Entry)iterator1.next();
                    jsonwriter.name(String.valueOf(entry1.getKey()));
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
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                JsonElement jsonelement = keyTypeAdapter.toJsonElement(entry.getKey());
                arraylist.add(jsonelement);
                arraylist1.add(entry.getValue());
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

        public Adapter(MiniGson minigson, Type type, TypeAdapter typeadapter, Type type1, TypeAdapter typeadapter1, ObjectConstructor objectconstructor)
        {
            this$0 = MapTypeAdapterFactory.this;
            super();
            keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(minigson, typeadapter, type);
            valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(minigson, typeadapter1, type1);
            constructor = objectconstructor;
        }
    }

}
