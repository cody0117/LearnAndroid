// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.drive.metadata.a;
import com.google.android.gms.internal.qy;
import com.google.android.gms.internal.rj;
import com.google.android.gms.internal.rq;
import java.util.HashMap;
import java.util.Map;

public final class f
{

    private static Map a = new HashMap();

    public static a a(String s)
    {
        return (a)a.get(s);
    }

    private static void a(a a1)
    {
        if (a.containsKey(a1.a()))
        {
            throw new IllegalArgumentException((new StringBuilder("Duplicate field name registered: ")).append(a1.a()).toString());
        } else
        {
            a.put(a1.a(), a1);
            return;
        }
    }

    static 
    {
        a(qy.a);
        a(qy.A);
        a(qy.r);
        a(qy.y);
        a(qy.B);
        a(qy.l);
        a(qy.m);
        a(qy.j);
        a(qy.o);
        a(qy.w);
        a(qy.b);
        a(qy.t);
        a(qy.d);
        a(qy.k);
        a(qy.e);
        a(qy.f);
        a(qy.g);
        a(qy.q);
        a(qy.n);
        a(qy.s);
        a(qy.u);
        a(qy.v);
        a(qy.x);
        a(qy.C);
        a(qy.D);
        a(qy.i);
        a(qy.h);
        a(qy.z);
        a(qy.p);
        a(qy.c);
        a(qy.E);
        a(qy.F);
        a(qy.G);
        a(rj.a);
        a(rj.c);
        a(rj.d);
        a(rj.e);
        a(rj.b);
        a(rq.a);
        a(rq.b);
    }
}
