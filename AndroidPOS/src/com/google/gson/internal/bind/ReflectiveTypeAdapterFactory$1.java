// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;

// Referenced classes of package com.google.gson.internal.bind:
//            ReflectiveTypeAdapterFactory, TypeAdapterRuntimeTypeWrapper

class val.fieldType extends undField
{

    final ReflectiveTypeAdapterFactory this$0;
    final TypeAdapter typeAdapter;
    final Gson val$context;
    final Field val$field;
    final TypeToken val$fieldType;
    final boolean val$isPrimitive;

    void read(JsonReader jsonreader, Object obj)
    {
        Object obj1 = typeAdapter.read(jsonreader);
        if (obj1 != null || !val$isPrimitive)
        {
            val$field.set(obj, obj1);
        }
    }

    void write(JsonWriter jsonwriter, Object obj)
    {
        Object obj1 = val$field.get(obj);
        (new TypeAdapterRuntimeTypeWrapper(val$context, typeAdapter, val$fieldType.getType())).write(jsonwriter, obj1);
    }

    public boolean writeField(Object obj)
    {
        while (!serialized || val$field.get(obj) == obj) 
        {
            return false;
        }
        return true;
    }

    undField(Field field1, TypeToken typetoken, 
            boolean flag2)
    {
        this$0 = final_reflectivetypeadapterfactory;
        val$context = Gson.this;
        val$field = field1;
        val$fieldType = typetoken;
        val$isPrimitive = flag2;
        super(final_s, final_flag, final_flag1);
        typeAdapter = ReflectiveTypeAdapterFactory.access$100(ReflectiveTypeAdapterFactory.this, val$context, val$field, val$fieldType);
    }
}
