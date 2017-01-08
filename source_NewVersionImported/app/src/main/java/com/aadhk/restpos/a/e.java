// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.b.j;
import com.aadhk.restpos.b.q;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.c.ap;
import com.aadhk.restpos.f.c;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.i;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, h, i, f, 
//            g

public final class e extends aa
{

    private TakeOrderActivity h;
    private List i;
    private List j;
    private q k;
    private j l;
    private String m;
    private String n;
    private int o;
    private Category p;
    private OrderItem q;
    private String r;
    private String s;

    public e(TakeOrderActivity takeorderactivity, List list, List list1, Category category, SQLiteDatabase sqlitedatabase)
    {
        super(takeorderactivity);
        h = takeorderactivity;
        i = list;
        p = category;
        j = list1;
        k = new q(sqlitedatabase);
        l = new j(sqlitedatabase);
        m = com.aadhk.restpos.f.i.e();
        n = com.aadhk.restpos.f.i.f();
        o = com.aadhk.restpos.f.i.d();
        r = c.getString(0x7f080039);
        s = c.getString(0x7f08003a);
    }

    static OrderItem a(e e1, Item item)
    {
        return e1.a(item);
    }

    private OrderItem a(Item item)
    {
        OrderItem orderitem = new OrderItem();
        orderitem.setItemId(item.getId());
        orderitem.setNum(1);
        orderitem.setItemName(item.getName());
        orderitem.setCategoryName(p.getName());
        orderitem.setStartTime(com.aadhk.restpos.f.i.c());
        orderitem.setPrinterId(item.getPrinterId());
        orderitem.setModifierGroupId(item.getModifierGroupIds());
        orderitem.setQty(item.getQty());
        orderitem.setWarn(item.isWarn());
        orderitem.setWarnQty(item.getWarnQty());
        PriceSchedule priceschedule = k.a(item.getId(), m, n, o);
        double d = item.getPrice();
        if (priceschedule != null)
        {
            orderitem.setDisName(priceschedule.getName());
            double d1 = priceschedule.getAmtRate();
            if (priceschedule.isDisAmt())
            {
                d -= d1;
            } else
            {
                d1 = com.aadhk.restpos.f.h.a(d, d1, g);
                d -= d1;
            }
            orderitem.setDisAmt(d1);
        }
        orderitem.setItemPrice(d);
        return orderitem;
    }

    static List a(e e1)
    {
        return e1.j;
    }

    static TakeOrderActivity b(e e1)
    {
        return e1.h;
    }

    static void b(e e1, Item item)
    {
        e1.q = e1.a(item);
        List list = e1.l.a(item.getModifierGroupIds().toString(), e1.q.getTax1Id(), e1.q.getTax2Id(), e1.f.isIncludeTax(), e1.f.getTax1(), e1.f.getTax2(), e1.f.getDecimalPlace());
        ap ap1 = new ap(e1.h, e1.q, list);
        ap1.a(new com.aadhk.restpos.a.h(e1, item));
        ap1.show();
    }

    static OrderItem c(e e1)
    {
        return e1.q;
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
        com.aadhk.restpos.a.i j1;
        String s1;
        String s2;
        int k1;
        int l1;
        if (view == null)
        {
            view = b.inflate(0x7f030068, null);
            com.aadhk.restpos.a.i i2 = new com.aadhk.restpos.a.i(this, (byte)0);
            i2.a = (TextView)view.findViewById(0x7f0b012c);
            i2.b = (TextView)view.findViewById(0x7f0b00d3);
            i2.c = (TextView)view.findViewById(0x7f0b0144);
            i2.d = (LinearLayout)view.findViewById(0x7f0b0145);
            i2.e = (LinearLayout)view.findViewById(0x7f0b0143);
            view.setTag(i2);
            j1 = i2;
        } else
        {
            j1 = (com.aadhk.restpos.a.i)view.getTag();
        }
        s1 = item.getBackground();
        s2 = item.getFontColor();
        if (s1 == null)
        {
            s1 = r;
        }
        if (s2 == null)
        {
            s2 = s;
        }
        k1 = com.aadhk.restpos.f.c.a(s1);
        l1 = com.aadhk.restpos.f.c.a(s2);
        j1.e.setBackgroundColor(k1);
        j1.a.setTextColor(l1);
        j1.b.setTextColor(l1);
        j1.c.setTextColor(l1);
        j1.e.setOnClickListener(new f(this, item, j1));
        j1.d.setOnClickListener(new g(this, item));
        j1.a.setText(item.getName());
        j1.b.setText(com.aadhk.restpos.f.j.a(g, item.getPrice(), d));
        if (item.getNum() != 0)
        {
            j1.c.setText((new StringBuilder("x")).append(item.getNum()).toString());
        } else
        {
            j1.c.setText("");
        }
        if (!TextUtils.isEmpty(item.getModifierGroupIds()))
        {
            j1.d.setVisibility(0);
            return view;
        } else
        {
            j1.d.setVisibility(8);
            return view;
        }
    }
}
