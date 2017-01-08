// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.b.j;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.c.ap;
import com.aadhk.restpos.c.bz;
import com.aadhk.restpos.c.v;
import com.aadhk.restpos.d.bv;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            v, x, w, z, 
//            n, o, y, p, 
//            q, r, t

public final class m extends BaseExpandableListAdapter
{

    private List a;
    private TakeOrderActivity b;
    private String c;
    private int d;
    private LayoutInflater e;
    private bv f;
    private String g[];
    private String h[];
    private Resources i;
    private Company j;
    private j k;
    private l l;

    private m(Context context)
    {
        b = (TakeOrderActivity)context;
        i = context.getResources();
        g = i.getStringArray(0x7f070013);
        h = i.getStringArray(0x7f070014);
    }

    public m(Context context, bv bv, List list, SQLiteDatabase sqlitedatabase)
    {
        this(context);
        a = list;
        f = bv;
        e = LayoutInflater.from(context);
        j = ((POSApp)context.getApplicationContext()).b();
        c = j.getCurrencySign();
        d = j.getDecimalPlace();
        k = new j(sqlitedatabase);
        l = new l(sqlitedatabase);
    }

    static bv a(m m1)
    {
        return m1.f;
    }

    static void a(m m1, int i1)
    {
        m1.a.remove(i1);
    }

    static void a(m m1, int i1, int j1)
    {
        ((OrderItem)m1.a.get(i1)).getOrderModifiers().remove(j1);
    }

    static void a(m m1, OrderItem orderitem)
    {
        List list = m1.l.b(2);
        bz bz1 = new bz(m1.b, orderitem.getRemark(), list);
        bz1.setTitle(0x7f090289);
        bz1.a(new com.aadhk.restpos.a.v(m1, orderitem));
        bz1.show();
    }

    static List b(m m1)
    {
        return m1.a;
    }

    static void b(m m1, OrderItem orderitem)
    {
        v v1 = new v(m1.b, orderitem, m1.d);
        v1.a(new x(m1, orderitem));
        v1.show();
    }

    static TakeOrderActivity c(m m1)
    {
        return m1.b;
    }

    static void c(m m1, OrderItem orderitem)
    {
        List list = m1.k.a(orderitem.getModifierGroupId(), orderitem.getTax1Id(), orderitem.getTax2Id(), m1.j.isIncludeTax(), m1.j.getTax1(), m1.j.getTax2(), m1.j.getDecimalPlace());
        ap ap1 = new ap(m1.b, orderitem, list);
        ap1.a(new w(m1));
        ap1.show();
    }

    static String[] d(m m1)
    {
        return m1.h;
    }

    static String[] e(m m1)
    {
        return m1.g;
    }

    public final Object getChild(int i1, int j1)
    {
        return ((OrderItem)a.get(i1)).getOrderModifiers().get(j1);
    }

    public final long getChildId(int i1, int j1)
    {
        return (long)j1;
    }

    public final View getChildView(int i1, int j1, boolean flag, View view, ViewGroup viewgroup)
    {
        z z1;
        OrderModifier ordermodifier;
        if (view == null)
        {
            view = e.inflate(0x7f030072, null);
            z1 = new z(this, (byte)0);
            z1.c = (TextView)view.findViewById(0x7f0b0144);
            z1.a = (TextView)view.findViewById(0x7f0b012c);
            z1.b = (TextView)view.findViewById(0x7f0b00d3);
            z1.e = (LinearLayout)view.findViewById(0x7f0b016b);
            z1.d = (LinearLayout)view.findViewById(0x7f0b016a);
            view.setTag(z1);
        } else
        {
            z1 = (z)view.getTag();
        }
        z1.e.setOnClickListener(new n(this, i1, j1, z1));
        z1.d.setOnClickListener(new o(this, i1, j1, z1));
        view.setTag(z1);
        ordermodifier = (OrderModifier)getChild(i1, j1);
        z1.a.setText(ordermodifier.getModifierName());
        z1.b.setText(com.aadhk.restpos.f.j.a(d, ordermodifier.getModifierPrice(), c));
        if (ordermodifier.getType() == 2)
        {
            z1.c.setText((new StringBuilder("-")).append(ordermodifier.getQty()).toString());
            return view;
        } else
        {
            z1.c.setText((new StringBuilder("+")).append(ordermodifier.getQty()).toString());
            return view;
        }
    }

    public final int getChildrenCount(int i1)
    {
        return ((OrderItem)a.get(i1)).getOrderModifiers().size();
    }

    public final Object getGroup(int i1)
    {
        return a.get(i1);
    }

    public final int getGroupCount()
    {
        return a.size();
    }

    public final long getGroupId(int i1)
    {
        return (long)i1;
    }

    public final View getGroupView(int i1, boolean flag, View view, ViewGroup viewgroup)
    {
        y y1;
        OrderItem orderitem;
        String s;
        if (view == null)
        {
            view = e.inflate(0x7f030071, null);
            y1 = new y(this, (byte)0);
            y1.a = (TextView)view.findViewById(0x7f0b012c);
            y1.b = (TextView)view.findViewById(0x7f0b00d3);
            y1.f = (LinearLayout)view.findViewById(0x7f0b0164);
            y1.g = (LinearLayout)view.findViewById(0x7f0b0167);
            y1.c = (TextView)view.findViewById(0x7f0b0144);
            y1.d = (TextView)view.findViewById(0x7f0b0168);
            y1.e = (TextView)view.findViewById(0x7f0b010e);
            y1.h = (LinearLayout)view.findViewById(0x7f0b0166);
            view.setTag(y1);
        } else
        {
            y1 = (y)view.getTag();
        }
        orderitem = (OrderItem)getGroup(i1);
        s = "";
        if (orderitem.getDisAmt() != 0.0D)
        {
            s = (new StringBuilder("-")).append(com.aadhk.restpos.f.j.a(d, orderitem.getDisAmt(), c)).append(": ").append(orderitem.getDisName()).toString();
        }
        if (orderitem.getStatus() == 2)
        {
            s = (new StringBuilder()).append(s).append(", ").append(i.getString(0x7f090274)).toString();
        }
        if (orderitem.getRemark() != null && !"".equals(orderitem.getRemark()))
        {
            s = (new StringBuilder()).append(s).append(", ").append(orderitem.getRemark()).toString();
        }
        if (!s.equals(""))
        {
            y1.e.setVisibility(0);
            if (s.charAt(0) == ',')
            {
                s = s.substring(1);
            }
            y1.e.setText(s);
        } else
        {
            y1.e.setVisibility(8);
        }
        y1.a.setText(orderitem.getItemName());
        y1.b.setText(com.aadhk.restpos.f.j.a(d, orderitem.getItemPrice(), c));
        y1.d.setText(com.aadhk.restpos.f.j.a(d, (double)orderitem.getNum() * orderitem.getItemPrice(), c));
        y1.c.setText((new StringBuilder("x")).append(orderitem.getNum()).toString());
        y1.g.setOnClickListener(new p(this, orderitem, i1));
        y1.f.setOnClickListener(new q(this, orderitem));
        if (!TextUtils.isEmpty(orderitem.getModifierGroupId()))
        {
            y1.h.setOnClickListener(new r(this, orderitem));
            return view;
        } else
        {
            y1.h.setOnClickListener(new t(this, orderitem));
            return view;
        }
    }

    public final boolean hasStableIds()
    {
        return false;
    }

    public final boolean isChildSelectable(int i1, int j1)
    {
        return true;
    }
}
