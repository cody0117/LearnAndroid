// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.c.bf;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.c;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ag, m, l, i, 
//            k

public final class h extends ag
{

    private TakeOrderActivity h;
    private List i;
    private String j;
    private String k;
    private int l;
    private Category m;
    private OrderItem n;
    private r o;
    private String p;
    private String q;
    private ad r;

    public h(TakeOrderActivity takeorderactivity, List list, Category category, ad ad1)
    {
        super(takeorderactivity);
        h = takeorderactivity;
        i = list;
        m = category;
        r = ad1;
        j = com.aadhk.restpos.util.o.e();
        k = com.aadhk.restpos.util.o.f();
        l = com.aadhk.restpos.util.o.d();
        p = c.getString(0x7f07003b);
        q = c.getString(0x7f07003c);
        o = new r(h);
    }

    static TakeOrderActivity a(h h1)
    {
        return h1.h;
    }

    private OrderItem a(Item item)
    {
        OrderItem orderitem = new OrderItem();
        orderitem.setItemId(item.getId());
        orderitem.setItemName(item.getName());
        orderitem.setCategoryName(m.getName());
        orderitem.setStartTime(com.aadhk.restpos.util.o.c());
        orderitem.setPrinterId(item.getPrinterId());
        orderitem.setModifierGroupId(item.getModifierGroupIds());
        orderitem.setKitchenNoteGroupId(item.getKitchenNoteGroupIds());
        orderitem.setWarn(item.isWarn());
        orderitem.setWarnQty(item.getWarnQty());
        PriceSchedule priceschedule = r.a(item.getId(), j, k, l);
        double d = item.getPrice();
        if (priceschedule != null)
        {
            orderitem.setDiscountName(priceschedule.getName());
            double d1 = priceschedule.getAmtRate();
            if (priceschedule.isDiscountAmt())
            {
                d -= d1;
            } else
            {
                d1 = com.aadhk.restpos.util.m.a(d, d1, g);
                d -= d1;
            }
            orderitem.setDiscountAmt(d1);
        }
        orderitem.setItemPrice(d);
        return orderitem;
    }

    static void a(h h1, com.aadhk.restpos.a.m m1, Item item, int i1, double d)
    {
        item.setOrderQty(i1 + item.getOrderQty());
        m1.c.setText((new StringBuilder("x")).append(item.getOrderQty()).toString());
        h1.n = h1.a(item);
        h1.n.setQty(i1);
        h1.n.setItemPrice(d);
        h1.n.setItemCost(item.getCost());
        h1.n.setStopSaleZeroQty(item.isStopSaleZeroQty());
        h1.h.b(h1.n);
        h1.h.f();
    }

    static void a(h h1, Item item)
    {
        h1.n = h1.a(item);
        h1.n.setQty(1);
        List list = h1.r.a(item.getModifierGroupIds().toString(), h1.n.getTax1Id(), h1.n.getTax2Id(), h1.n.getTax3Id(), h1.f.isItemPriceIncludeTax(), h1.f.getTax1(), h1.f.getTax2(), h1.f.getTax3(), h1.f.getDecimalPlace());
        bf bf1 = new bf(h1.h, h1.n, list);
        bf1.a(new l(h1, item));
        bf1.show();
    }

    static OrderItem b(h h1)
    {
        return h1.n;
    }

    public final int getCount()
    {
        return i.size();
    }

    public final Object getItem(int i1)
    {
        return i.get(i1);
    }

    public final long getItemId(int i1)
    {
        return (long)i1;
    }

    public final View getView(int i1, View view, ViewGroup viewgroup)
    {
        Item item = (Item)i.get(i1);
        com.aadhk.restpos.a.m m1;
        String s;
        String s1;
        int j1;
        int k1;
        if (view == null)
        {
            view = b.inflate(0x7f03007d, null);
            com.aadhk.restpos.a.m m2 = new com.aadhk.restpos.a.m(this, (byte)0);
            m2.a = (TextView)view.findViewById(0x7f090171);
            m2.b = (TextView)view.findViewById(0x7f0900f3);
            m2.c = (TextView)view.findViewById(0x7f09018a);
            m2.d = (TextView)view.findViewById(0x7f09018b);
            m2.e = (LinearLayout)view.findViewById(0x7f09018c);
            m2.f = (LinearLayout)view.findViewById(0x7f090189);
            m2.g = (LinearLayout)view.findViewById(0x7f090188);
            view.setTag(m2);
            m1 = m2;
        } else
        {
            m1 = (com.aadhk.restpos.a.m)view.getTag();
        }
        s = item.getBackground();
        s1 = item.getFontColor();
        if (s == null)
        {
            s = p;
        }
        if (s1 == null)
        {
            s1 = q;
        }
        j1 = c.a(s);
        k1 = c.a(s1);
        m1.g.setBackgroundColor(j1);
        m1.a.setTextColor(k1);
        m1.a.setTextSize(o.o());
        m1.b.setTextColor(k1);
        m1.c.setTextColor(k1);
        m1.d.setTextColor(k1);
        m1.f.setOnClickListener(new i(this, item, m1));
        m1.e.setOnClickListener(new k(this, item));
        m1.a.setText(item.getName());
        m1.b.setText(com.aadhk.restpos.util.p.a(g, item.getPrice(), d));
        if (item.getOrderQty() != 0)
        {
            m1.c.setText((new StringBuilder("x")).append(item.getOrderQty()).toString());
        } else
        {
            m1.c.setText("");
        }
        if (!TextUtils.isEmpty(item.getModifierGroupIds()))
        {
            m1.e.setVisibility(0);
            return view;
        } else
        {
            m1.e.setVisibility(8);
            return view;
        }
    }
}
