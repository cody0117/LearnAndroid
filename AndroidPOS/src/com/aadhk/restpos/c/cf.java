// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.util.m;

// Referenced classes of package com.aadhk.restpos.c:
//            cd

final class cf
    implements android.view.View.OnFocusChangeListener
{

    final cd a;

    cf(cd cd1)
    {
        a = cd1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = cd.a(a).getText().toString();
            cd.a(a, h.d(s));
            cd.b(a, m.b(cd.b(a), cd.c(a)));
            cd.a(a, h.d(cd.d(a)));
            cd.f(a).setText(cd.e(a));
            cd.a(a).setSelection(cd.a(a).getText().length());
        }
    }
}
