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

    final TypeToken val$type;
    final TypeAdapter val$typeAdapter;

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        if (typetoken.equals(val$type))
        {
            return val$typeAdapter;
        } else
        {
            return null;
        }
    }

    ory()
    {
        val$type = typetoken;
        val$typeAdapter = typeadapter;
        super();
    }
}
