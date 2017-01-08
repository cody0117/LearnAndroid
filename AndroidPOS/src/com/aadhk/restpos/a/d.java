// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import android.widget.CheckBox;
import com.aadhk.restpos.util.r;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.a:
//            c, e

final class d
    implements android.view.View.OnClickListener
{

    final int a;
    final e b;
    final c c;

    d(c c1, int i, e e1)
    {
        c = c1;
        a = i;
        b = e1;
        super();
    }

    public final void onClick(View view)
    {
        if (com.aadhk.restpos.a.c.a(c) == null)
        {
            com.aadhk.restpos.a.c.c(c).a(com.aadhk.restpos.a.c.b(c)[a], b.b.isChecked());
            return;
        } else
        {
            com.aadhk.restpos.a.c.a(c).put(com.aadhk.restpos.a.c.b(c)[a], Boolean.valueOf(b.b.isChecked()));
            return;
        }
    }
}
