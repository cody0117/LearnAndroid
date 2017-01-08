// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.bean.Order;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            d

final class e
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        Order order = (Order)d.a(a).get(i);
        d.a(a, order.getTableName());
        d.a(a, order.getId());
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
