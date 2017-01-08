// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import com.aadhk.restpos.OrderListActivity;
import com.aadhk.restpos.a.az;
import com.aadhk.restpos.bean.Category;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.c:
//            ct

final class cu
    implements android.view.View.OnClickListener
{

    final OrderListActivity a;
    final Button b;
    final Category c;
    final ct d;

    cu(ct ct1, OrderListActivity orderlistactivity, Button button, Category category)
    {
        d = ct1;
        a = orderlistactivity;
        b = button;
        c = category;
        super();
    }

    public final void onClick(View view)
    {
        ct.a(d).setTextColor(a.getResources().getColor(0x7f07006c));
        b.setTextColor(a.getResources().getColor(0x7f07006b));
        ct.a(d, b);
        ct.a(d, (List)ct.b(d).get(Long.valueOf(c.getId())));
        ct.d(d).setAdapter(new az(a, ct.c(d)));
        ct.d(d).setOnItemClickListener(d);
    }
}
