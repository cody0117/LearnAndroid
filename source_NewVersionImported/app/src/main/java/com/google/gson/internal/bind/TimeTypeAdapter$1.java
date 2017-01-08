// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import java.sql.Time;

// Referenced classes of package com.google.gson.internal.bind:
//            TimeTypeAdapter, MiniGson, TypeAdapter

class y
    implements y
{

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        if (typetoken.getRawType() == java/sql/Time)
        {
            return new TimeTypeAdapter();
        } else
        {
            return null;
        }
    }

    y()
    {
    }
}
