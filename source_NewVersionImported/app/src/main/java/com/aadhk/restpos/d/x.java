// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import com.aadhk.restpos.bean.User;

// Referenced classes of package com.aadhk.restpos.d:
//            w

final class x
    implements android.view.View.OnClickListener
{

    final User a;
    final Button b;
    final w c;

    x(w w1, User user, Button button)
    {
        c = w1;
        a = user;
        b = button;
        super();
    }

    public final void onClick(View view)
    {
        w.a(c, a.getAccount());
        w.a(c, a);
        w.a(c).setTypeface(Typeface.DEFAULT);
        w.a(c).setTextColor(0xff000000);
        w.a(c).setTextSize(18F);
        b.setTextColor(c.getResources().getColor(0x7f080073));
        b.setTypeface(Typeface.DEFAULT_BOLD);
        b.setTextSize(22F);
        w.a(c, b);
    }
}
