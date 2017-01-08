// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;

// Referenced classes of package com.google.gson.internal.bind:
//            ObjectTypeAdapter, MiniGson, TypeAdapter

class 
    implements 
{

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        if (typetoken.getRawType() == java/lang/Object)
        {
            return new ObjectTypeAdapter(minigson, null);
        } else
        {
            return null;
        }
    }

    ()
    {
    }
}
