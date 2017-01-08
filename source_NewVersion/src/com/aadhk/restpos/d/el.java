// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.d:
//            ek

final class el
    implements f
{

    final EditText a;
    final int b;
    final ek c;

    el(ek ek1, EditText edittext, int j)
    {
        c = ek1;
        a = edittext;
        b = j;
        super();
    }

    public final void a(Object obj)
    {
        String s = obj.toString();
        a.setText(i.d(s, ek.g(c)));
        ek.a(c, s);
        if (b == 1)
        {
            ek.b(c, s);
        } else
        {
            ek.c(c, s);
        }
        if (ek.e(c).a)
        {
            com.aadhk.restpos.d.ek.f(c);
        }
    }
}
