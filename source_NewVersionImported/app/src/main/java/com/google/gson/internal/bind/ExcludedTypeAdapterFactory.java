// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.ExclusionStrategy;
import com.google.gson.reflect.TypeToken;

// Referenced classes of package com.google.gson.internal.bind:
//            MiniGson, TypeAdapter

public final class ExcludedTypeAdapterFactory
    implements TypeAdapter.Factory
{

    private final ExclusionStrategy deserializationExclusionStrategy;
    private final ExclusionStrategy serializationExclusionStrategy;

    public ExcludedTypeAdapterFactory(ExclusionStrategy exclusionstrategy, ExclusionStrategy exclusionstrategy1)
    {
        serializationExclusionStrategy = exclusionstrategy;
        deserializationExclusionStrategy = exclusionstrategy1;
    }

    public final TypeAdapter create(final MiniGson context, final TypeToken type)
    {
        Class class1 = type.getRawType();
        final boolean skipSerialize = serializationExclusionStrategy.shouldSkipClass(class1);
        final boolean skipDeserialize = deserializationExclusionStrategy.shouldSkipClass(class1);
        if (!skipSerialize && !skipDeserialize)
        {
            return null;
        } else
        {
            return new _cls1();
        }
    }

    private class _cls1 extends TypeAdapter
    {

        private TypeAdapter _flddelegate;
        final ExcludedTypeAdapterFactory this$0;
        final MiniGson val$context;
        final boolean val$skipDeserialize;
        final boolean val$skipSerialize;
        final TypeToken val$type;

        private TypeAdapter _mthdelegate()
        {
            TypeAdapter typeadapter = _flddelegate;
            if (typeadapter != null)
            {
                return typeadapter;
            } else
            {
                TypeAdapter typeadapter1 = context.getNextAdapter(ExcludedTypeAdapterFactory.this, type);
                _flddelegate = typeadapter1;
                return typeadapter1;
            }
        }

        public Object read(JsonReader jsonreader)
        {
            if (skipDeserialize)
            {
                jsonreader.skipValue();
                return null;
            } else
            {
                return _mthdelegate().read(jsonreader);
            }
        }

        public void write(JsonWriter jsonwriter, Object obj)
        {
            if (skipSerialize)
            {
                jsonwriter.nullValue();
                return;
            } else
            {
                _mthdelegate().write(jsonwriter, obj);
                return;
            }
        }

        _cls1()
        {
            this$0 = ExcludedTypeAdapterFactory.this;
            skipDeserialize = flag;
            skipSerialize = flag1;
            context = minigson;
            type = typetoken;
            super();
        }
    }

}
