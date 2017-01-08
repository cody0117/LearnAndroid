// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.database.sqlite.SQLiteDatabase;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.aadhk.product.library.b.e;
import com.aadhk.restpos.ListOrdersActivity;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.c:
//            bt, bu

public final class bs extends e
    implements android.widget.AdapterView.OnItemClickListener
{

    private ListOrdersActivity f;
    private bu g;
    private GridView h;
    private LinearLayout i;
    private SQLiteDatabase j;
    private List k;
    private Map l;
    private List m;
    private Button n;

    public bs(ListOrdersActivity listordersactivity)
    {
        super(listordersactivity, 0x7f030053);
        f = listordersactivity;
        j = listordersactivity.a;
        k = (new b(j)).b();
        Company company = listordersactivity.n();
        i i1 = new i(j);
        l = new HashMap();
        Category category1;
        for (Iterator iterator = k.iterator(); iterator.hasNext(); l.put(Long.valueOf(category1.getId()), i1.a(category1.getId(), company.isIncludeTax(), company.getTax1(), company.getTax2(), company.getDecimalPlace())))
        {
            category1 = (Category)iterator.next();
        }

        i = (LinearLayout)findViewById(0x7f0b011c);
        h = (GridView)findViewById(0x7f0b011d);
        Category category;
        Button button;
        for (Iterator iterator1 = k.iterator(); iterator1.hasNext(); button.setOnClickListener(new bt(this, listordersactivity, button, category)))
        {
            category = (Category)iterator1.next();
            View view = listordersactivity.getLayoutInflater().inflate(0x7f030023, null);
            button = (Button)view.findViewById(0x7f0b006f);
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
            findViewById(0x7f0b011b).setVisibility(0);
        }
    }

    static Button a(bs bs1)
    {
        return bs1.n;
    }

    static Button a(bs bs1, Button button)
    {
        bs1.n = button;
        return button;
    }

    static List a(bs bs1, List list)
    {
        bs1.m = list;
        return list;
    }

    static Map b(bs bs1)
    {
        return bs1.l;
    }

    static List c(bs bs1)
    {
        return bs1.m;
    }

    static GridView d(bs bs1)
    {
        return bs1.h;
    }

    public final void a(bu bu1)
    {
        g = bu1;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Item item = (Item)m.get(i1);
        g.a(item);
    }
}
