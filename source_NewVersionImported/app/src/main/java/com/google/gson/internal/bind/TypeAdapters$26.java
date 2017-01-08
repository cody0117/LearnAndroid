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

    final Class val$boxed;
    final TypeAdapter val$typeAdapter;
    final Class val$unboxed;

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        Class class1 = typetoken.getRawType();
        if (class1 == val$unboxed || class1 == val$boxed)
        {
            return val$typeAdapter;
        } else
        {
            return null;
        }
    }

    public final String toString()
    {
        return (new StringBuilder("Factory[type=")).append(val$boxed.getName()).append("+").append(val$unboxed.getName()).append(",adapter=").append(val$typeAdapter).append("]").toString();
    }

    ory()
    {
        val$unboxed = class1;
        val$boxed = class2;
        val$typeAdapter = typeadapter;
        super();
    }
}
