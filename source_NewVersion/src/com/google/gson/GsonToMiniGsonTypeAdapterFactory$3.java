// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.MiniGson;
import com.google.gson.internal.bind.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonElement, GsonToMiniGsonTypeAdapterFactory, JsonDeserializer, JsonSerializer

class val.typeToken extends TypeAdapter
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
            TypeAdapter typeadapter1 = val$context.getNextAdapter(GsonToMiniGsonTypeAdapterFactory.this, val$typeToken);
            _flddelegate = typeadapter1;
            return typeadapter1;
        }
    }

    public Object read(JsonReader jsonreader)
    {
        if (val$deserializer == null)
        {
            return _mthdelegate().read(jsonreader);
        }
        JsonElement jsonelement = Streams.parse(jsonreader);
        if (jsonelement.isJsonNull())
        {
            return null;
        } else
        {
            return val$deserializer.deserialize(jsonelement, val$type, GsonToMiniGsonTypeAdapterFactory.access$000(GsonToMiniGsonTypeAdapterFactory.this));
        }
    }

    public void write(JsonWriter jsonwriter, Object obj)
    {
        if (val$serializer == null)
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
            Streams.write(val$serializer.serialize(obj, val$type, GsonToMiniGsonTypeAdapterFactory.access$100(GsonToMiniGsonTypeAdapterFactory.this)), jsonwriter);
            return;
        }
    }

    ()
    {
        this$0 = final_gsontominigsontypeadapterfactory;
        val$deserializer = jsondeserializer;
        val$type = type1;
        val$serializer = jsonserializer;
        val$context = minigson;
        val$typeToken = TypeToken.this;
        super();
    }
}
