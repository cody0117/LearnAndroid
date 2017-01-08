// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.h;

// Referenced classes of package com.aadhk.restpos:
//            PayCloseOutActivity

final class by
    implements f
{

    final int a;
    final PayCloseOutActivity b;

    by(PayCloseOutActivity paycloseoutactivity, int i)
    {
        b = paycloseoutactivity;
        a = i;
        super();
    }

    public final void a(Object obj)
    {
        double d = ((Double)obj).doubleValue();
        if (a == 1)
        {
            PayCloseOutActivity.j(b).setText(h.b(d));
        } else
        {
            if (a == 2)
            {
                PayCloseOutActivity.x(b).setText(h.b(d));
                return;
            }
            if (a == 3)
            {
                PayCloseOutActivity.y(b).setText(h.b(d));
                PayCloseOutActivity.v(b);
                return;
            }
        }
    }
}
