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
//            aq

public final class ap extends e
    implements android.view.View.OnClickListener
{

    private String f;
    private int g;
    private Button h;
    private List i;
    private List j;
    private LayoutInflater k;

    public ap(Context context, OrderItem orderitem, List list)
    {
        super(context, 0x7f030099);
        ((TextView)findViewById(0x7f0b0085)).setText(0x7f090267);
        h = (Button)findViewById(0x7f0b013f);
        h.setOnClickListener(this);
        Company company = ((POSApp)context.getApplicationContext()).b();
        f = company.getCurrencySign();
        g = company.getDecimalPlace();
        i = orderitem.getOrderModifiers();
        j = list;
        k = LayoutInflater.from(context);
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
                    if (modifier.getId() == ordermodifier.getModifierId())
                    {
                        modifier.setQty(ordermodifier.getQty());
                    }
                }
            }
        }

        ExpandableListView expandablelistview = (ExpandableListView)findViewById(0x7f0b0238);
        expandablelistview.setAdapter(new aq(this, (byte)0));
        expandablelistview.setGroupIndicator(null);
        for (int l = 0; l < j.size(); l++)
        {
            expandablelistview.expandGroup(l);
        }

    }

    static List a(ap ap1)
    {
        return ap1.j;
    }

    static LayoutInflater b(ap ap1)
    {
        return ap1.k;
    }

    static int c(ap ap1)
    {
        return ap1.g;
    }

    static String d(ap ap1)
    {
        return ap1.f;
    }

    static List e(ap ap1)
    {
        return ap1.i;
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
