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

final class bx
    implements TextWatcher
{

    final bw a;

    bx(bw bw1)
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
        String s = bw.a(a).getText().toString();
        bw.a(a, h.d(s));
        bw.b(a, m.b(bw.b(a), bw.c(a)));
        bw.a(a, h.d(bw.d(a)));
        bw.f(a).setText(bw.e(a));
        bw.a(a).setSelection(bw.a(a).getText().length());
    }
}
