// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Button;
import android.widget.TextView;
import com.aadhk.restpos.f.c;
import yuku.ambilwarna.e;

// Referenced classes of package com.aadhk.restpos.d:
//            z

final class ac
    implements e
{

    final z a;

    ac(z z1)
    {
        a = z1;
        super();
    }

    public final void a(String s)
    {
        int i = c.a(s);
        z.b(a, s);
        z.h(a).setBackgroundColor(i);
        z.f(a).setTextColor(i);
        z.i(a).setText(s);
    }
}
