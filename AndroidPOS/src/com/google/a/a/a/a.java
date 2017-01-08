// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.a.a.a;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.b;
import com.google.android.gms.ads.b.c;
import com.google.android.gms.ads.b.e;
import com.google.android.gms.ads.b.f;
import com.google.android.gms.ads.d;
import com.google.android.gms.internal.me;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.a.a.a:
//            b, c

public final class a
    implements c, e
{

    private AdView a;
    private com.google.android.gms.ads.e b;

    public a()
    {
    }

    private static b a(Context context, com.google.android.gms.ads.b.a a1, Bundle bundle, Bundle bundle1)
    {
        com.google.android.gms.ads.c c1 = new com.google.android.gms.ads.c();
        java.util.Date date = a1.a();
        if (date != null)
        {
            c1.a(date);
        }
        int i = a1.b();
        if (i != 0)
        {
            c1.a(i);
        }
        Set set = a1.c();
        if (set != null)
        {
            for (Iterator iterator = set.iterator(); iterator.hasNext(); c1.a((String)iterator.next())) { }
        }
        android.location.Location location = a1.d();
        if (location != null)
        {
            c1.a(location);
        }
        if (a1.e())
        {
            c1.b(me.a(context));
        }
        if (bundle1.getInt("tagForChildDirectedTreatment") != -1)
        {
            boolean flag;
            if (bundle1.getInt("tagForChildDirectedTreatment") == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c1.a(flag);
        }
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putInt("gw", 1);
        bundle.putString("mad_hac", bundle1.getString("mad_hac"));
        if (!TextUtils.isEmpty(bundle1.getString("adJson")))
        {
            bundle.putString("_ad", bundle1.getString("adJson"));
        }
        bundle.putBoolean("_noRefresh", true);
        c1.a(com/google/a/a/a/a, bundle);
        return c1.a();
    }

    public final void a()
    {
        if (a != null)
        {
            a.a();
            a = null;
        }
        if (b != null)
        {
            b = null;
        }
    }

    public final void a(Context context, com.google.android.gms.ads.b.d d1, Bundle bundle, d d2, com.google.android.gms.ads.b.a a1, Bundle bundle1)
    {
        a = new AdView(context);
        a.a(new d(d2.b(), d2.a()));
        a.a(bundle.getString("pubid"));
        a.a(new com.google.a.a.a.b(this, d1));
        a.a(a(context, a1, bundle1, bundle));
    }

    public final void a(Context context, f f, Bundle bundle, com.google.android.gms.ads.b.a a1, Bundle bundle1)
    {
        b = new com.google.android.gms.ads.e(context);
        b.a(bundle.getString("pubid"));
        b.a(new com.google.a.a.a.c(this, f));
        b.a(a(context, a1, bundle1, bundle));
    }

    public final void b()
    {
        if (a != null)
        {
            a.b();
        }
    }

    public final void c()
    {
        if (a != null)
        {
            a.c();
        }
    }

    public final View d()
    {
        return a;
    }

    public final void e()
    {
        b.a();
    }
}
