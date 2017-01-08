// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.aadhk.restpos:
//            KitchenActivity

final class t
    implements android.view.View.OnClickListener
{

    final int a;
    final LinearLayout b;
    final KitchenActivity c;

    t(KitchenActivity kitchenactivity, int i, LinearLayout linearlayout)
    {
        c = kitchenactivity;
        a = i;
        b = linearlayout;
        super();
    }

    public final void onClick(View view)
    {
        KitchenActivity.a(c, a);
        c.a(0);
        if (KitchenActivity.a(c) != b)
        {
            KitchenActivity.a(c).setBackgroundResource(0);
            b.setBackgroundResource(0x7f020086);
        } else
        {
            KitchenActivity.a(c).setBackgroundResource(0x7f020086);
        }
        KitchenActivity.a(c, b);
        KitchenActivity.b(c);
    }
}
