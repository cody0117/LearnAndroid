// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.util.m;

// Referenced classes of package com.aadhk.restpos.c:
//            bw

final class by
    implements TextWatcher
{

    final bw a;

    by(bw bw1)
    {
        a = bw1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        String s = bw.f(a).getText().toString();
        if (!s.equals(bw.e(a)))
        {
            bw.a(a, s);
            bw.b(a, h.d(bw.e(a)));
            bw.a(a, m.a(bw.c(a), bw.d(a), bw.g(a)));
            bw.a(a).setText(h.b(bw.b(a)));
            bw.f(a).setSelection(bw.f(a).getText().length());
        }
    }
}
