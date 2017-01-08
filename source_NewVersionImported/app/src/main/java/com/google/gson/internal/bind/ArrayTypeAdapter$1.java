// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;

// Referenced classes of package com.google.gson.internal.bind:
//            ArrayTypeAdapter, MiniGson, TypeAdapter

class 
    implements 
{

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        java.lang.reflect.Type type = typetoken.getType();
        if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class)type).isArray()))
        {
            return null;
        } else
        {
            java.lang.reflect.Type type1 = com.google.gson.internal.yComponentType(type);
            return new ArrayTypeAdapter(minigson, minigson.getAdapter(TypeToken.get(type1)), com.google.gson.internal.ype(type1));
        }
    }

    ()
    {
    }
}
