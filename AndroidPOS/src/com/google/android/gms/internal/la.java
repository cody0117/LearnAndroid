// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            lb, fh, fj, av, 
//            mg, dt, eh, du, 
//            dw, ay, cg

public final class la
{

    public final av a;
    public final mg b;
    public final List c;
    public final int d;
    public final List e;
    public final List f;
    public final int g;
    public final long h;
    public final String i;
    public final JSONObject j;
    public final boolean k;
    public final dt l;
    public final eh m;
    public final String n;
    public final du o;
    public final dw p;
    public final long q;
    public final ay r;
    public final long s;
    public final long t;
    public final long u;
    public final String v;
    public final cg w;

    public la(av av, mg mg, List list, int i1, List list1, List list2, int j1, 
            long l1, String s1, boolean flag, dt dt, eh eh, String s2, 
            du du, dw dw, long l2, ay ay, long l3, 
            long l4, long l5, String s3, JSONObject jsonobject, cg cg)
    {
        a = av;
        b = mg;
        List list3;
        List list4;
        List list5;
        if (list != null)
        {
            list3 = Collections.unmodifiableList(list);
        } else
        {
            list3 = null;
        }
        c = list3;
        d = i1;
        if (list1 != null)
        {
            list4 = Collections.unmodifiableList(list1);
        } else
        {
            list4 = null;
        }
        e = list4;
        if (list2 != null)
        {
            list5 = Collections.unmodifiableList(list2);
        } else
        {
            list5 = null;
        }
        f = list5;
        g = j1;
        h = l1;
        i = s1;
        k = flag;
        l = dt;
        m = eh;
        n = s2;
        o = du;
        p = dw;
        q = l2;
        r = ay;
        s = l3;
        t = l4;
        u = l5;
        v = s3;
        j = jsonobject;
        w = cg;
    }

    public la(lb lb1, mg mg)
    {
        this(lb1.a.c, mg, lb1.b.d, lb1.e, lb1.b.f, lb1.b.j, lb1.b.l, lb1.b.k, lb1.a.i, lb1.b.h, null, null, null, lb1.c, null, lb1.b.i, lb1.d, lb1.b.g, lb1.f, lb1.g, lb1.b.o, lb1.h, null);
    }
}
