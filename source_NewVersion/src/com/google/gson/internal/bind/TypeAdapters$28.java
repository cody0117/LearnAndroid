// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapter, MiniGson

class val.typeAdapter
    implements ory
{

    final Class val$clazz;
    final TypeAdapter val$typeAdapter;

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        if (val$clazz.isAssignableFrom(typetoken.getRawType()))
        {
            return val$typeAdapter;
        } else
        {
            return null;
        }
    }

    public final String toString()
    {
        return (new StringBuilder("Factory[typeHierarchy=")).append(val$clazz.getName()).append(",adapter=").append(val$typeAdapter).append("]").toString();
    }

    ory()
    {
        val$clazz = class1;
        val$typeAdapter = typeadapter;
        super();
    }
}
