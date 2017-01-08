// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;

// Referenced classes of package com.google.gson.internal.bind:
//            MiniGson, TypeAdapter

class val.clazz
    implements ory
{

    final Class val$clazz;

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        Class class1 = typetoken.getRawType();
        if (val$clazz.isAssignableFrom(class1))
        {
            return new mTypeAdapter(class1);
        } else
        {
            return null;
        }
    }

    mTypeAdapter()
    {
        val$clazz = class1;
        super();
    }
}
