// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.internal.ParameterizedTypeHandlerMap;
import com.google.gson.internal.bind.MiniGson;
import com.google.gson.internal.bind.TypeAdapter;
import com.google.gson.reflect.TypeToken;

// Referenced classes of package com.google.gson:
//            JsonSerializer, JsonDeserializer, JsonDeserializationContext, JsonSerializationContext, 
//            Gson

final class GsonToMiniGsonTypeAdapterFactory
    implements com.google.gson.internal.bind.TypeAdapter.Factory
{

    private final JsonDeserializationContext deserializationContext;
    private final ParameterizedTypeHandlerMap deserializers;
    private final JsonSerializationContext serializationContext;
    private final ParameterizedTypeHandlerMap serializers;

    public GsonToMiniGsonTypeAdapterFactory(final Gson gson, ParameterizedTypeHandlerMap parameterizedtypehandlermap, ParameterizedTypeHandlerMap parameterizedtypehandlermap1)
    {
        serializers = parameterizedtypehandlermap;
        deserializers = parameterizedtypehandlermap1;
        deserializationContext = new _cls1();
        serializationContext = new _cls2();
    }

    public final TypeAdapter create(final MiniGson context, final TypeToken typeToken)
    {
        final Type type = typeToken.getType();
        final JsonSerializer serializer = (JsonSerializer)serializers.getHandlerFor(type, false);
        final JsonDeserializer deserializer = (JsonDeserializer)deserializers.getHandlerFor(type, false);
        if (serializer == null && deserializer == null)
        {
            return null;
        } else
        {
            return new _cls3();
        }
    }



    private class _cls1
        implements JsonDeserializationContext
    {

        final GsonToMiniGsonTypeAdapterFactory this$0;
        final Gson val$gson;

        public Object deserialize(JsonElement jsonelement, Type type)
        {
            return gson.fromJson(jsonelement, type);
        }

        _cls1()
        {
            this$0 = GsonToMiniGsonTypeAdapterFactory.this;
            gson = gson1;
            super();
        }
    }


    private class _cls2
        implements JsonSerializationContext
    {

        final GsonToMiniGsonTypeAdapterFactory this$0;
        final Gson val$gson;

        public JsonElement serialize(Object obj)
        {
            return gson.toJsonTree(obj);
        }

        public JsonElement serialize(Object obj, Type type)
        {
            return gson.toJsonTree(obj, type);
        }

        _cls2()
        {
            this$0 = GsonToMiniGsonTypeAdapterFactory.this;
            gson = gson1;
            super();
        }
    }


    private class _cls3 extends TypeAdapter
    {

        private TypeAdapter _flddelegate;
        final GsonToMiniGsonTypeAdapterFactory this$0;
        final MiniGson val$context;
        final JsonDeserializer val$deserializer;
        final JsonSerializer val$serializer;
        final Type val$type;
        final TypeToken val$typeToken;

        private TypeAdapter _mthdelegate()
        {
            TypeAdapter typeadapter = _flddelegate;
            if (typeadapter != null)
            {
                return typeadapter;
            } else
            {
                TypeAdapter typeadapter1 = context.getNextAdapter(GsonToMiniGsonTypeAdapterFactory.this, typeToken);
                _flddelegate = typeadapter1;
                return typeadapter1;
            }
        }

        public Object read(JsonReader jsonreader)
        {
            if (deserializer == null)
            {
                return _mthdelegate().read(jsonreader);
            }
            JsonElement jsonelement = Streams.parse(jsonreader);
            if (jsonelement.isJsonNull())
            {
                return null;
            } else
            {
                return deserializer.deserialize(jsonelement, type, deserializationContext);
            }
        }

        public void write(JsonWriter jsonwriter, Object obj)
        {
            if (serializer == null)
            {
                _mthdelegate().write(jsonwriter, obj);
                return;
            }
            if (obj == null)
            {
                jsonwriter.nullValue();
                return;
            } else
            {
                Streams.write(serializer.serialize(obj, type, serializationContext), jsonwriter);
                return;
            }
        }

        _cls3()
        {
            this$0 = GsonToMiniGsonTypeAdapterFactory.this;
            deserializer = jsondeserializer;
            type = type1;
            serializer = jsonserializer;
            context = minigson;
            typeToken = typetoken;
            super();
        }
    }

}
