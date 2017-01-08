// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Button;
import android.widget.TextView;
import com.aadhk.restpos.util.c;
import yuku.ambilwarna.e;

// Referenced classes of package com.aadhk.restpos.d:
//            bu

final class bx
    implements e
{

    final bu a;

    bx(bu bu1)
    {
        a = bu1;
        super();
    }

    public final void a(String s)
    {
        int i = c.a(s);
        bu.a(a, s);
        bu.a(a).setBackgroundColor(i);
        bu.b(a).setBackgroundColor(i);
        com.aadhk.restpos.d.bu.c(a).setText(s);
    }
}
