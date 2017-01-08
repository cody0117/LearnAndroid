// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.aadhk.restpos.d:
//            j

final class m
    implements android.view.View.OnClickListener
{

    final j a;

    m(j j1)
    {
        a = j1;
        super();
    }

    public final void onClick(View view)
    {
        j.a(a, j.d(a).getText().toString());
        j j1 = a;
        j.e(a);
        j.f(j1);
    }
}
