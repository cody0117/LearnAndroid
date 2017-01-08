// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.preference.Preference;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class ix
    implements f
{

    final it a;

    ix(it it1)
    {
        a = it1;
        super();
    }

    public final void a(Object obj)
    {
        it.c(a).a("prefItemFontSize", ((Integer)obj).intValue());
        String s = a.getString(0x7f080291);
        Object aobj[] = new Object[1];
        aobj[0] = (new StringBuilder()).append(obj).toString();
        String s1 = String.format(s, aobj);
        it.e(a).setSummary(s1);
    }
}
