// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class bn
{

    private final HashSet a = new HashSet();
    private final Bundle b = new Bundle();
    private final HashMap c = new HashMap();
    private final HashSet d = new HashSet();
    private Date e;
    private String f;
    private int g;
    private Location h;
    private boolean i;
    private String j;
    private int k;

    public bn()
    {
        g = -1;
        i = false;
        k = -1;
    }

    static Date a(bn bn1)
    {
        return bn1.e;
    }

    static String b(bn bn1)
    {
        return bn1.f;
    }

    static int c(bn bn1)
    {
        return bn1.g;
    }

    static HashSet d(bn bn1)
    {
        return bn1.a;
    }

    static Location e(bn bn1)
    {
        return bn1.h;
    }

    static boolean f(bn bn1)
    {
        return bn1.i;
    }

    static Bundle g(bn bn1)
    {
        return bn1.b;
    }

    static HashMap h(bn bn1)
    {
        return bn1.c;
    }

    static String i(bn bn1)
    {
        return bn1.j;
    }

    static int j(bn bn1)
    {
        return bn1.k;
    }

    static HashSet k(bn bn1)
    {
        return bn1.d;
    }

    public final void a(int l)
    {
        g = l;
    }

    public final void a(Location location)
    {
        h = location;
    }

    public final void a(Class class1, Bundle bundle)
    {
        b.putBundle(class1.getName(), bundle);
    }

    public final void a(String s)
    {
        a.add(s);
    }

    public final void a(Date date)
    {
        e = date;
    }

    public final void a(boolean flag)
    {
        int l;
        if (flag)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        k = l;
    }

    public final void b(String s)
    {
        d.add(s);
    }
}
