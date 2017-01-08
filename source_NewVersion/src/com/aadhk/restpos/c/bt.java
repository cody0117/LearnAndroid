// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import com.aadhk.restpos.ListOrdersActivity;
import com.aadhk.restpos.a.as;
import com.aadhk.restpos.bean.Category;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.c:
//            bs

final class bt
    implements android.view.View.OnClickListener
{

    final ListOrdersActivity a;
    final Button b;
    final Category c;
    final bs d;

    bt(bs bs1, ListOrdersActivity listordersactivity, Button button, Category category)
    {
        d = bs1;
        a = listordersactivity;
        b = button;
        c = category;
        super();
    }

    public final void onClick(View view)
    {
        bs.a(d).setTextColor(a.getResources().getColor(0x7f080055));
        b.setTextColor(a.getResources().getColor(0x7f080054));
        bs.a(d, b);
        bs.a(d, (List)bs.b(d).get(Long.valueOf(c.getId())));
        bs.d(d).setAdapter(new as(a, bs.c(d)));
        bs.d(d).setOnItemClickListener(d);
    }
}
