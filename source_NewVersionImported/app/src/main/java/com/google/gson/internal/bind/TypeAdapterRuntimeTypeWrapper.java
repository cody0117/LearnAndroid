// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapter, Reflection, MiniGson

final class TypeAdapterRuntimeTypeWrapper extends TypeAdapter
{

    private final MiniGson context;
    private final TypeAdapter _flddelegate;
    private final Type type;

    TypeAdapterRuntimeTypeWrapper(MiniGson minigson, TypeAdapter typeadapter, Type type1)
    {
        context = minigson;
        _flddelegate = typeadapter;
        type = type1;
    }

    public final Object read(JsonReader jsonreader)
    {
        return _flddelegate.read(jsonreader);
    }

    public final void write(JsonWriter jsonwriter, Object obj)
    {
        TypeAdapter typeadapter = _flddelegate;
        Type type1 = Reflection.getRuntimeTypeIfMoreSpecific(type, obj);
        if (type1 != type)
        {
            typeadapter = context.getAdapter(TypeToken.get(type1));
            if ((typeadapter instanceof ReflectiveTypeAdapterFactory.Adapter) && !(_flddelegate instanceof ReflectiveTypeAdapterFactory.Adapter))
            {
                typeadapter = _flddelegate;
            }
        }
        typeadapter.write(jsonwriter, obj);
    }
}
