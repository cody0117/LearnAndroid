// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.a.a.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            bm, bj, av

public final class as
{

    public static final as a = new as();

    private as()
    {
    }

    public static as a()
    {
        return a;
    }

    public static av a(Context context, bm bm1)
    {
        Date date = bm1.a();
        long l;
        String s;
        int i;
        Set set;
        java.util.List list;
        boolean flag;
        int j;
        android.location.Location location;
        android.os.Bundle bundle;
        boolean flag1;
        String s1;
        com.google.android.gms.ads.search.a a1;
        bj bj1;
        if (date != null)
        {
            l = date.getTime();
        } else
        {
            l = -1L;
        }
        s = bm1.b();
        i = bm1.c();
        set = bm1.d();
        if (!set.isEmpty())
        {
            list = Collections.unmodifiableList(new ArrayList(set));
        } else
        {
            list = null;
        }
        flag = bm1.a(context);
        j = bm1.k();
        location = bm1.e();
        bundle = bm1.a(com/google/a/a/a/a);
        flag1 = bm1.f();
        s1 = bm1.g();
        a1 = bm1.h();
        if (a1 != null)
        {
            bj1 = new bj(a1);
        } else
        {
            bj1 = null;
        }
        return new av(4, l, bundle, i, list, flag, j, flag1, s1, bj1, location, s, bm1.j());
    }

}
