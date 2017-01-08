// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.preference.Preference;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class iw
    implements f
{

    final it a;

    iw(it it1)
    {
        a = it1;
        super();
    }

    public final void a(Object obj)
    {
        it.c(a).a("prefTableDefaultPersonNum", Integer.parseInt((String)obj));
        String s = String.format(a.getString(0x7f0802a7), new Object[] {
            obj
        });
        it.d(a).setSummary(s);
    }
}
