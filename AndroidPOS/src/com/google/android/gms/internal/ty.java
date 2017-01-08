// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import java.util.HashSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ay, qa, ud, tx, 
//            gs, ax, lk, la, 
//            lb, lc, bi, ho, 
//            gw, cl, cm, bz, 
//            gq, li

final class ty
{

    public final tx a;
    public final String b;
    public final Context c;
    public final qa d = new qa(new ud(this));
    public final gs e;
    public ax f;
    public lk g;
    public lk h;
    public ay i;
    public la j;
    public lb k;
    public lc l;
    public bi m;
    public ho n;
    public gw o;
    public cl p;
    public cm q;
    public bz r;
    public List s;
    public gq t;
    public li u;
    public View v;
    public int w;
    public boolean x;
    public boolean y;
    private HashSet z;

    public ty(Context context, ay ay1, String s1, gs gs)
    {
        u = null;
        v = null;
        w = 0;
        x = false;
        y = false;
        z = null;
        if (ay1.e)
        {
            a = null;
        } else
        {
            a = new tx(context);
            a.setMinimumWidth(ay1.g);
            a.setMinimumHeight(ay1.d);
            a.setVisibility(4);
        }
        i = ay1;
        b = s1;
        c = context;
        e = gs;
    }

    public final HashSet a()
    {
        return z;
    }

    public final void a(HashSet hashset)
    {
        z = hashset;
    }
}
