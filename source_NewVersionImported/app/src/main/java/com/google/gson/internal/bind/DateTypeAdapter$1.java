// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import java.util.Date;

// Referenced classes of package com.google.gson.internal.bind:
//            DateTypeAdapter, MiniGson, TypeAdapter

class y
    implements y
{

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        if (typetoken.getRawType() == java/util/Date)
        {
            return new DateTypeAdapter();
        } else
        {
            return null;
        }
    }

    y()
    {
    }
}
