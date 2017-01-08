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

final class cj
    implements android.view.View.OnFocusChangeListener
{

    final ch a;

    cj(ch ch1)
    {
        a = ch1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = ch.a(a).getText().toString();
            ch.a(a, h.d(s));
            ch.b(a, m.b(ch.b(a), ch.c(a)));
            ch.a(a, h.d(ch.d(a)));
            ch.f(a).setText(ch.e(a));
        }
    }
}
