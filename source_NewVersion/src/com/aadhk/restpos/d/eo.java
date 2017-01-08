// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.CheckBox;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos.d:
//            ep, en, ek

final class eo
    implements android.view.View.OnClickListener
{

    final ep a;
    final int b;
    final en c;

    eo(en en1, ep ep1, int i)
    {
        c = en1;
        a = ep1;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        boolean flag = a.a.isChecked();
        ek.d(c.h)[b] = flag;
        ek.c(c.h).a(ek.b(c.h)[b], flag);
        if (ek.e(c.h).a)
        {
            ek.f(c.h);
        }
    }
}
