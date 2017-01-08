// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.el;

final class ao
{

    public static el a(el el1)
    {
        el el2 = new el();
        el2.a = el1.a;
        el2.k = (int[])el1.k.clone();
        if (el1.l)
        {
            el2.l = el1.l;
        }
        return el2;
    }
}
