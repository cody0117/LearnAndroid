// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.aadhk.product.library.b.e;
import com.aadhk.restpos.OrderListActivity;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.g.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.c:
//            cu, cv

public final class ct extends e
    implements android.widget.AdapterView.OnItemClickListener
{

    private OrderListActivity f;
    private cv g;
    private GridView h;
    private LinearLayout i;
    private o j;
    private List k;
    private Map l;
    private List m;
    private Button n;

    public ct(OrderListActivity orderlistactivity)
    {
        super(orderlistactivity, 0x7f030061);
        f = orderlistactivity;
        j = orderlistactivity.a();
        k = j.a();
        Company company = orderlistactivity.v();
        l = new HashMap();
        Category category1;
        for (Iterator iterator = k.iterator(); iterator.hasNext(); l.put(Long.valueOf(category1.getId()), j.a(category1.getId(), company.isItemPriceIncludeTax(), company.getTax1(), company.getTax2(), company.getTax3(), company.getDecimalPlace())))
        {
            category1 = (Category)iterator.next();
        }

        i = (LinearLayout)findViewById(0x7f090160);
        h = (GridView)findViewById(0x7f090161);
        Category category;
        Button button;
        for (Iterator iterator1 = k.iterator(); iterator1.hasNext(); button.setOnClickListener(new cu(this, orderlistactivity, button, category)))
        {
            category = (Category)iterator1.next();
            View view = orderlistactivity.getLayoutInflater().inflate(0x7f030027, null);
            button = (Button)view.findViewById(0x7f09007b);
            button.setText(category.getName());
            i.addView(view);
            if (((Category)k.get(0)).getId() == category.getId())
            {
                n = button;
            }
        }

        if (n != null)
        {
            n.performClick();
        }
        if (k.isEmpty())
        {
            findViewById(0x7f09015f).setVisibility(0);
        }
    }

    static Button a(ct ct1)
    {
        return ct1.n;
    }

    static Button a(ct ct1, Button button)
    {
        ct1.n = button;
        return button;
    }

    static List a(ct ct1, List list)
    {
        ct1.m = list;
        return list;
    }

    static Map b(ct ct1)
    {
        return ct1.l;
    }

    static List c(ct ct1)
    {
        return ct1.m;
    }

    static GridView d(ct ct1)
    {
        return ct1.h;
    }

    public final void a(cv cv1)
    {
        g = cv1;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Item item = (Item)m.get(i1);
        if (g != null)
        {
            g.a(item);
            dismiss();
        }
    }
}
