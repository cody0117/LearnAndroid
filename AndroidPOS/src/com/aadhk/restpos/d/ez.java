// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import com.aadhk.restpos.bean.PaymentMethod;

// Referenced classes of package com.aadhk.restpos.d:
//            ey

final class ez
    implements android.view.View.OnClickListener
{

    final Button a;
    final PaymentMethod b;
    final ey c;

    ez(ey ey1, Button button, PaymentMethod paymentmethod)
    {
        c = ey1;
        a = button;
        b = paymentmethod;
        super();
    }

    public final void onClick(View view)
    {
        if (ey.a(c) != null)
        {
            ey.a(c).setTextColor(0xff000000);
            ey.a(c).setTextSize(16F);
            ey.a(c).setTypeface(Typeface.DEFAULT);
        }
        a.setTextColor(c.getResources().getColor(0x7f07008a));
        a.setTextSize(18F);
        a.setTypeface(Typeface.DEFAULT_BOLD);
        ey.a(c, a);
        ey.a(c, b);
        ey.b(c);
    }
}
