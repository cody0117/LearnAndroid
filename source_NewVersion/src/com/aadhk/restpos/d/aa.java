// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.d:
//            z

final class aa
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final z a;

    aa(z z1)
    {
        a = z1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            z.a(a).setTextColor(a.getResources().getColor(0x7f080061));
            z.b(a).setEnabled(true);
            z.c(a).setVisibility(0);
            z.d(a).setVisibility(0);
            return;
        } else
        {
            z.a(a).setTextColor(a.getResources().getColor(0x7f08006d));
            z.b(a).setEnabled(false);
            z.c(a).setVisibility(8);
            z.d(a).setVisibility(8);
            return;
        }
    }
}
