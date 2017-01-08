// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.EditText;
import com.aadhk.restpos.b.e;

// Referenced classes of package com.aadhk.restpos.d:
//            e

final class h
    implements android.view.View.OnClickListener
{

    final com.aadhk.restpos.d.e a;

    h(com.aadhk.restpos.d.e e1)
    {
        a = e1;
        super();
    }

    public final void onClick(View view)
    {
        e.a(a, com.aadhk.restpos.d.e.e(a).a(e.d(a).getText().toString()));
    }
}
