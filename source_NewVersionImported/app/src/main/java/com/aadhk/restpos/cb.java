// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import com.aadhk.product.library.a.a;
import com.aadhk.restpos.c.ca;

// Referenced classes of package com.aadhk.restpos:
//            cc, TakeOrderActivity

final class cb
    implements ca
{

    final TakeOrderActivity a;

    cb(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a(String s)
    {
        (new a(a, new cc(this, s), a.b.getString(0x7f090179))).execute(null);
    }
}
