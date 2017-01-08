// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.search.a;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            me, bn

public final class bm
{

    public static final String a = com.google.android.gms.internal.me.a("emulator");
    private final Date b;
    private final String c;
    private final int d;
    private final Set e;
    private final Location f;
    private final boolean g;
    private final Bundle h;
    private final Map i;
    private final String j;
    private final a k;
    private final int l;
    private final Set m;

    public bm(bn bn1)
    {
        this(bn1, (byte)0);
    }

    private bm(bn bn1, byte byte0)
    {
        b = com.google.android.gms.internal.bn.a(bn1);
        c = bn.b(bn1);
        d = bn.c(bn1);
        e = Collections.unmodifiableSet(bn.d(bn1));
        f = bn.e(bn1);
        g = bn.f(bn1);
        h = bn.g(bn1);
        i = Collections.unmodifiableMap(bn.h(bn1));
        j = bn.i(bn1);
        k = null;
        l = bn.j(bn1);
        m = Collections.unmodifiableSet(bn.k(bn1));
    }

    public final Bundle a(Class class1)
    {
        return h.getBundle(class1.getName());
    }

    public final Date a()
    {
        return b;
    }

    public final boolean a(Context context)
    {
        return m.contains(com.google.android.gms.internal.me.a(context));
    }

    public final String b()
    {
        return c;
    }

    public final int c()
    {
        return d;
    }

    public final Set d()
    {
        return e;
    }

    public final Location e()
    {
        return f;
    }

    public final boolean f()
    {
        return g;
    }

    public final String g()
    {
        return j;
    }

    public final a h()
    {
        return k;
    }

    public final Map i()
    {
        return i;
    }

    public final Bundle j()
    {
        return h;
    }

    public final int k()
    {
        return l;
    }

}
