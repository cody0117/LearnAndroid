// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.util.r;

public class ck
{

    protected String a;

    public ck(Context context)
    {
        r r1 = new r(context);
        a = (new StringBuilder("http://")).append(r1.w()).append(":8080/posst/").toString();
    }
}
