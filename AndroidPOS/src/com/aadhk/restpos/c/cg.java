// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.EditText;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.util.m;

// Referenced classes of package com.aadhk.restpos.c:
//            cd

final class cg
    implements android.view.View.OnFocusChangeListener
{

    final cd a;

    cg(cd cd1)
    {
        a = cd1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = cd.f(a).getText().toString();
            if (!s.equals(cd.e(a)))
            {
                cd.a(a, s);
                cd.b(a, h.d(cd.e(a)));
                cd.a(a, m.a(cd.c(a), cd.d(a), cd.g(a)));
                cd.a(a).setText(h.c(cd.b(a)));
            }
        }
    }
}
