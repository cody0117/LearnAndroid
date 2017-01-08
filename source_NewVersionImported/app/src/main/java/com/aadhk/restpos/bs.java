// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.support.v4.view.ViewPager;
import com.aadhk.restpos.c.l;

// Referenced classes of package com.aadhk.restpos:
//            ReportActivity, bt

final class bs
    implements l
{

    final ReportActivity a;

    bs(ReportActivity reportactivity)
    {
        a = reportactivity;
        super();
    }

    public final void a(String s, String s1)
    {
        ReportActivity.a(a, s);
        ReportActivity.b(a, s1);
        ReportActivity.a(a);
        ReportActivity.b(a).notifyDataSetChanged();
        ReportActivity.c(a).setCurrentItem(1000);
    }
}
