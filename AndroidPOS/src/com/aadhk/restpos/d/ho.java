// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.CheckBox;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            hp, hn, hk

final class ho
    implements android.view.View.OnClickListener
{

    final hp a;
    final int b;
    final hn c;

    ho(hn hn1, hp hp1, int i)
    {
        c = hn1;
        a = hp1;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        boolean flag = a.a.isChecked();
        hk.d(c.h)[b] = flag;
        hk.c(c.h).a(hk.b(c.h)[b], flag);
        if (hk.e(c.h).a)
        {
            hk.f(c.h);
        }
    }
}
