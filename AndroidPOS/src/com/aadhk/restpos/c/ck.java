// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.EditText;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.util.m;

// Referenced classes of package com.aadhk.restpos.c:
//            ch

final class ck
    implements android.view.View.OnFocusChangeListener
{

    final ch a;

    ck(ch ch1)
    {
        a = ch1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = ch.f(a).getText().toString();
            if (!s.equals(ch.e(a)))
            {
                ch.a(a, s);
                ch.b(a, h.d(ch.e(a)));
                ch.a(a, m.a(ch.c(a), ch.d(a), ch.g(a)));
                ch.a(a).setText(h.c(ch.b(a)));
            }
        }
    }
}
