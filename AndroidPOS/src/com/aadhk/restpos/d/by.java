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

final class by
    implements e
{

    final bu a;

    by(bu bu1)
    {
        a = bu1;
        super();
    }

    public final void a(String s)
    {
        int i = c.a(s);
        bu.b(a, s);
        bu.d(a).setBackgroundColor(i);
        bu.b(a).setTextColor(i);
        com.aadhk.restpos.d.bu.e(a).setText(s);
    }
}
