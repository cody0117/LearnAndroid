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
//            cd

final class ce
    implements android.view.View.OnClickListener
{

    final Button a;
    final PaymentMethod b;
    final cd c;

    ce(cd cd1, Button button, PaymentMethod paymentmethod)
    {
        c = cd1;
        a = button;
        b = paymentmethod;
        super();
    }

    public final void onClick(View view)
    {
        if (cd.a(c) != null)
        {
            cd.a(c).setTextColor(0xff000000);
            cd.a(c).setTextSize(16F);
            cd.a(c).setTypeface(Typeface.DEFAULT);
        }
        a.setTextColor(c.getResources().getColor(0x7f080073));
        a.setTextSize(18F);
        a.setTypeface(Typeface.DEFAULT_BOLD);
        cd.a(c, a);
        cd.a(c, b);
        cd.b(c);
    }
}
