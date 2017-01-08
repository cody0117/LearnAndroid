// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.aadhk.restpos.f.h;

// Referenced classes of package com.aadhk.restpos.c:
//            be

final class bh
    implements android.view.View.OnFocusChangeListener
{

    final be a;

    bh(be be1)
    {
        a = be1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = be.d(a).getText().toString();
            if (!TextUtils.isEmpty(s))
            {
                be.a(a, Integer.parseInt(s));
                be.a(a, h.a(be.c(a), be.e(a), be.f(a)));
                be.a(a).setText(com.aadhk.product.library.c.h.c(be.b(a)));
            }
        }
    }
}
