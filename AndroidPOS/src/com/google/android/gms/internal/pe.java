// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            pg, pc, ox

final class pe
{

    final pc a;
    private final String b;
    private final pg c = new pg(this);
    private final HashSet d = new HashSet();
    private int e;
    private boolean f;
    private IBinder g;
    private ComponentName h;

    public pe(pc pc1, String s)
    {
        a = pc1;
        super();
        b = s;
        e = 2;
    }

    static int a(pe pe1, int i)
    {
        pe1.e = i;
        return i;
    }

    static ComponentName a(pe pe1, ComponentName componentname)
    {
        pe1.h = componentname;
        return componentname;
    }

    static IBinder a(pe pe1, IBinder ibinder)
    {
        pe1.g = ibinder;
        return ibinder;
    }

    static HashSet a(pe pe1)
    {
        return pe1.d;
    }

    public final void a()
    {
        Intent intent = (new Intent(b)).setPackage("com.google.android.gms");
        f = pc.b(a).bindService(intent, c, 129);
        if (f)
        {
            e = 3;
            return;
        } else
        {
            pc.b(a).unbindService(c);
            return;
        }
    }

    public final void a(ox ox)
    {
        d.add(ox);
    }

    public final void b()
    {
        pc.b(a).unbindService(c);
        f = false;
        e = 2;
    }

    public final void b(ox ox)
    {
        d.remove(ox);
    }

    public final String c()
    {
        return b;
    }

    public final boolean c(ox ox)
    {
        return d.contains(ox);
    }

    public final boolean d()
    {
        return f;
    }

    public final int e()
    {
        return e;
    }

    public final boolean f()
    {
        return d.isEmpty();
    }

    public final IBinder g()
    {
        return g;
    }

    public final ComponentName h()
    {
        return h;
    }
}
