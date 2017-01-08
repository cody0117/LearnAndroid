// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import java.util.Collection;

// Referenced classes of package com.google.gson.internal.bind:
//            MiniGson, TypeAdapter

public final class CollectionTypeAdapterFactory
    implements TypeAdapter.Factory
{

    private final ConstructorConstructor constructorConstructor;

    public CollectionTypeAdapterFactory(ConstructorConstructor constructorconstructor)
    {
        constructorConstructor = constructorconstructor;
    }

    public final TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        Type type = typetoken.getType();
        Class class1 = typetoken.getRawType();
        if (!java/util/Collection.isAssignableFrom(class1))
        {
            return null;
        } else
        {
            Type type1 = com.google.gson.internal..Gson.Types.getCollectionElementType(type, class1);
            return new Adapter(minigson, type1, minigson.getAdapter(TypeToken.get(type1)), constructorConstructor.getConstructor(typetoken));
        }
    }

    private class Adapter extends TypeAdapter
    {

        private final ObjectConstructor constructor;
        private final TypeAdapter elementTypeAdapter;
        final CollectionTypeAdapterFactory this$0;

        public final volatile Object read(JsonReader jsonreader)
        {
            return read(jsonreader);
        }

        public final Collection read(JsonReader jsonreader)
        {
            if (jsonreader.peek() == JsonToken.NULL)
            {
                jsonreader.nextNull();
                return null;
            }
            Collection collection = (Collection)constructor.construct();
            jsonreader.beginArray();
            for (; jsonreader.hasNext(); collection.add(elementTypeAdapter.read(jsonreader))) { }
            jsonreader.endArray();
            return collection;
        }

        public final volatile void write(JsonWriter jsonwriter, Object obj)
        {
            write(jsonwriter, (Collection)obj);
        }

        public final void write(JsonWriter jsonwriter, Collection collection)
        {
            if (collection == null)
            {
                jsonwriter.nullValue();
                return;
            }
            jsonwriter.beginArray();
            Object obj;
            for (Iterator iterator = collection.iterator(); iterator.hasNext(); elementTypeAdapter.write(jsonwriter, obj))
            {
                obj = iterator.next();
            }

            jsonwriter.endArray();
        }

        public Adapter(MiniGson minigson, Type type, TypeAdapter typeadapter, ObjectConstructor objectconstructor)
        {
            this$0 = CollectionTypeAdapterFactory.this;
            super();
            elementTypeAdapter = new TypeAdapterRuntimeTypeWrapper(minigson, typeadapter, type);
            constructor = objectconstructor;
        }
    }

}
