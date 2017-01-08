// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.preference.Preference;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            av

final class ay
    implements f
{

    final int a;
    final av b;

    ay(av av1, int i)
    {
        b = av1;
        a = i;
        super();
    }

    public final void a(Object obj)
    {
        if (a == 1)
        {
            int j = Integer.parseInt((String)obj);
            String s2 = b.getString(0x7f0803ab);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            String s3 = String.format(s2, aobj1);
            av.c(b).setSummary(s3);
            av.b(b).a("fontSize", j);
        } else
        if (a == 2)
        {
            int i = Integer.parseInt((String)obj);
            String s = b.getString(0x7f0803ad);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            String s1 = String.format(s, aobj);
            av.d(b).setSummary(s1);
            av.b(b).a("refresh", i);
            return;
        }
    }
}
