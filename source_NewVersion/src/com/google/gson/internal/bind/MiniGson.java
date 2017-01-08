// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapters, CollectionTypeAdapterFactory, StringToValueMapTypeAdapterFactory, ArrayTypeAdapter, 
//            ObjectTypeAdapter, ReflectiveTypeAdapterFactory, TypeAdapter

public final class MiniGson
{

    private final ThreadLocal calls;
    private final List factories;

    private MiniGson(Builder builder)
    {
        calls = new _cls1();
        ConstructorConstructor constructorconstructor = new ConstructorConstructor();
        ArrayList arraylist = new ArrayList();
        if (builder.addDefaultFactories)
        {
            arraylist.add(TypeAdapters.BOOLEAN_FACTORY);
            arraylist.add(TypeAdapters.INTEGER_FACTORY);
            arraylist.add(TypeAdapters.DOUBLE_FACTORY);
            arraylist.add(TypeAdapters.FLOAT_FACTORY);
            arraylist.add(TypeAdapters.LONG_FACTORY);
            arraylist.add(TypeAdapters.STRING_FACTORY);
        }
        arraylist.addAll(builder.factories);
        if (builder.addDefaultFactories)
        {
            arraylist.add(new CollectionTypeAdapterFactory(constructorconstructor));
            arraylist.add(new StringToValueMapTypeAdapterFactory(constructorconstructor));
            arraylist.add(ArrayTypeAdapter.FACTORY);
            arraylist.add(ObjectTypeAdapter.FACTORY);
            arraylist.add(new ReflectiveTypeAdapterFactory(constructorconstructor));
        }
        factories = Collections.unmodifiableList(arraylist);
    }

    MiniGson(Builder builder, _cls1 _pcls1)
    {
        this(builder);
    }

    public final TypeAdapter getAdapter(TypeToken typetoken)
    {
        Map map;
        FutureTypeAdapter futuretypeadapter1;
        map = (Map)calls.get();
        FutureTypeAdapter futuretypeadapter = (FutureTypeAdapter)map.get(typetoken);
        if (futuretypeadapter != null)
        {
            return futuretypeadapter;
        }
        futuretypeadapter1 = new FutureTypeAdapter();
        map.put(typetoken, futuretypeadapter1);
        Iterator iterator = factories.iterator();
        TypeAdapter typeadapter;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_110;
            }
            typeadapter = ((TypeAdapter.Factory)iterator.next()).create(this, typetoken);
        } while (typeadapter == null);
        futuretypeadapter1.setDelegate(typeadapter);
        map.remove(typetoken);
        return typeadapter;
        throw new IllegalArgumentException((new StringBuilder("This MiniGSON cannot handle ")).append(typetoken).toString());
        Exception exception;
        exception;
        map.remove(typetoken);
        throw exception;
    }

    public final TypeAdapter getAdapter(Class class1)
    {
        return getAdapter(TypeToken.get(class1));
    }

    public final List getFactories()
    {
        return factories;
    }

    public final TypeAdapter getNextAdapter(TypeAdapter.Factory factory, TypeToken typetoken)
    {
        Iterator iterator = factories.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            TypeAdapter.Factory factory1 = (TypeAdapter.Factory)iterator.next();
            if (!flag)
            {
                if (factory1 == factory)
                {
                    flag = true;
                }
            } else
            {
                TypeAdapter typeadapter = factory1.create(this, typetoken);
                if (typeadapter != null)
                {
                    return typeadapter;
                }
            }
        }
        throw new IllegalArgumentException((new StringBuilder("This MiniGSON cannot serialize ")).append(typetoken).toString());
    }

    private class _cls1 extends ThreadLocal
    {

        final MiniGson this$0;

        protected volatile Object initialValue()
        {
            return initialValue();
        }

        protected Map initialValue()
        {
            return new HashMap();
        }

        _cls1()
        {
            this$0 = MiniGson.this;
            super();
        }
    }


    private class Builder
    {

        boolean addDefaultFactories;
        private final List factories = new ArrayList();

        public final MiniGson build()
        {
            return new MiniGson(this, null);
        }

        public final Builder factory(TypeAdapter.Factory factory1)
        {
            factories.add(factory1);
            return this;
        }

        public final Builder typeAdapter(TypeToken typetoken, TypeAdapter typeadapter)
        {
            factories.add(TypeAdapters.newFactory(typetoken, typeadapter));
            return this;
        }

        public final Builder typeAdapter(Class class1, TypeAdapter typeadapter)
        {
            factories.add(TypeAdapters.newFactory(class1, typeadapter));
            return this;
        }

        public final Builder typeHierarchyAdapter(Class class1, TypeAdapter typeadapter)
        {
            factories.add(TypeAdapters.newTypeHierarchyFactory(class1, typeadapter));
            return this;
        }

        public final Builder withoutDefaultFactories()
        {
            addDefaultFactories = false;
            return this;
        }


        public Builder()
        {
            addDefaultFactories = true;
        }
    }


    private class FutureTypeAdapter extends TypeAdapter
    {

        private TypeAdapter _flddelegate;

        public Object read(JsonReader jsonreader)
        {
            if (_flddelegate == null)
            {
                throw new IllegalStateException();
            } else
            {
                return _flddelegate.read(jsonreader);
            }
        }

        public void setDelegate(TypeAdapter typeadapter)
        {
            if (_flddelegate != null)
            {
                throw new AssertionError();
            } else
            {
                _flddelegate = typeadapter;
                return;
            }
        }

        public void write(JsonWriter jsonwriter, Object obj)
        {
            if (_flddelegate == null)
            {
                throw new IllegalStateException();
            } else
            {
                _flddelegate.write(jsonwriter, obj);
                return;
            }
        }

        FutureTypeAdapter()
        {
        }
    }

}
