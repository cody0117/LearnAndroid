// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.ReportListActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            ek

final class em
    implements f
{

    final EditText a;
    final int b;
    final ek c;

    em(ek ek1, EditText edittext, int i)
    {
        c = ek1;
        a = edittext;
        b = i;
        super();
    }

    public final void a(Object obj)
    {
        String s = obj.toString();
        a.setText(s);
        if (b == 1)
        {
            ek.d(c, s);
        } else
        {
            ek.e(c, s);
        }
        if (ek.e(c).a)
        {
            com.aadhk.restpos.d.ek.f(c);
        }
    }
}
