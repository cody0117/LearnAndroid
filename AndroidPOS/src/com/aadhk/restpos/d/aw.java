// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.preference.Preference;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            av

final class aw
    implements f
{

    final av a;

    aw(av av1)
    {
        a = av1;
        super();
    }

    public final void a(Object obj)
    {
        String as[] = ((String)obj).split("\\,");
        int i = Integer.parseInt(as[0]);
        int j = Integer.parseInt(as[1]);
        int k = Integer.parseInt(as[2]);
        String s = a.getString(0x7f0803a9);
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        aobj[2] = Integer.valueOf(k);
        String s1 = String.format(s, aobj);
        av.a(a).setSummary(s1);
        av.b(a).a("redMinutes", i);
        av.b(a).a("greenMinutes", j);
        av.b(a).a("yellowMinutes", k);
    }
}
