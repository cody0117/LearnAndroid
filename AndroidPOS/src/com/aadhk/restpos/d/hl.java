// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.util.o;

// Referenced classes of package com.aadhk.restpos.d:
//            hk

final class hl
    implements f
{

    final EditText a;
    final int b;
    final hk c;

    hl(hk hk1, EditText edittext, int i)
    {
        c = hk1;
        a = edittext;
        b = i;
        super();
    }

    public final void a(Object obj)
    {
        String s = obj.toString();
        a.setText(o.e(s, hk.g(c)));
        hk.a(c, s);
        if (b == 1)
        {
            hk.b(c, s);
        } else
        {
            hk.c(c, s);
        }
        if (hk.e(c).a)
        {
            com.aadhk.restpos.d.hk.f(c);
        }
    }
}
