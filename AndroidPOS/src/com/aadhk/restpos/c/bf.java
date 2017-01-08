// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bh, bg

public final class bf extends e
    implements android.view.View.OnClickListener
{

    private String f;
    private int g;
    private Button h;
    private List i;
    private List j;
    private LayoutInflater k;
    private OrderItem l;

    public bf(Context context, OrderItem orderitem, List list)
    {
        super(context, 0x7f0300b7);
        ((TextView)findViewById(0x7f0900a3)).setText(0x7f0802c2);
        h = (Button)findViewById(0x7f090184);
        h.setOnClickListener(this);
        Company company = ((POSApp)context.getApplicationContext()).b();
        f = company.getCurrencySign();
        g = company.getDecimalPlace();
        i = orderitem.getOrderModifiers();
        j = list;
        k = LayoutInflater.from(context);
        l = orderitem;
        for (Iterator iterator = i.iterator(); iterator.hasNext();)
        {
            OrderModifier ordermodifier = (OrderModifier)iterator.next();
            Iterator iterator1 = j.iterator();
            while (iterator1.hasNext()) 
            {
                Iterator iterator2 = ((ModifierGroup)iterator1.next()).getModifiers().iterator();
                while (iterator2.hasNext()) 
                {
                    Modifier modifier = (Modifier)iterator2.next();
                    if (modifier.getName().equals(ordermodifier.getModifierName()))
                    {
                        modifier.setQty(ordermodifier.getQty());
                    }
                }
            }
        }

        ExpandableListView expandablelistview = (ExpandableListView)findViewById(0x7f0902ac);
        expandablelistview.setAdapter(new bh(this, (byte)0));
        expandablelistview.setGroupIndicator(null);
        expandablelistview.setOnGroupClickListener(new bg(this));
        for (int i1 = 0; i1 < j.size(); i1++)
        {
            expandablelistview.expandGroup(i1);
        }

    }

    static List a(bf bf1)
    {
        return bf1.j;
    }

    static LayoutInflater b(bf bf1)
    {
        return bf1.k;
    }

    static int c(bf bf1)
    {
        return bf1.g;
    }

    static String d(bf bf1)
    {
        return bf1.f;
    }

    static OrderItem e(bf bf1)
    {
        return bf1.l;
    }

    static List f(bf bf1)
    {
        return bf1.i;
    }

    public final void onClick(View view)
    {
        if (view == h)
        {
            if (a != null)
            {
                a.a(null);
            }
            dismiss();
        }
    }
}
