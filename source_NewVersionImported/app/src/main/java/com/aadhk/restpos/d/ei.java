// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.b;

// Referenced classes of package com.aadhk.restpos.d:
//            eg

final class ei
    implements android.view.View.OnClickListener
{

    final b a;
    final eg b;

    ei(eg eg1, b b1)
    {
        b = eg1;
        a = b1;
        super();
    }

    public final void onClick(View view)
    {
        String s = b.a.getResources().getString(0x7f090045);
        (new a(b.a, a, s)).execute(null);
    }
}
