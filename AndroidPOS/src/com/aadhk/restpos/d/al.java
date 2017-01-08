// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.bl;
import com.aadhk.restpos.a.h;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.d;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            an, ao, am, dr

public final class al extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private static List a;
    private static List b;
    private static Map c;
    private static TakeOrderActivity f;
    private static ad u;
    private List d;
    private List e;
    private ao g;
    private Button h;
    private EditText i;
    private ListView j;
    private GridView k;
    private View l;
    private boolean m;
    private Company n;
    private PopupWindow o;
    private String p;
    private String q;
    private int r;
    private int s;
    private int t;

    public al()
    {
    }

    static int a(al al1, int i1)
    {
        al1.t = i1;
        return i1;
    }

    static List a(al al1)
    {
        return al1.e;
    }

    static List a(List list)
    {
        return b(list);
    }

    static EditText b(al al1)
    {
        return al1.i;
    }

    static TakeOrderActivity b()
    {
        return f;
    }

    private static List b(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Item item = (Item)iterator.next();
            item.setOrderQty(0);
            Iterator iterator1 = b.iterator();
            while (iterator1.hasNext()) 
            {
                OrderItem orderitem = (OrderItem)iterator1.next();
                if (orderitem.getItemId() == item.getId())
                {
                    item.setOrderQty(item.getOrderQty() + orderitem.getQty());
                }
            }
        }

        return list;
    }

    static List c()
    {
        return a;
    }

    static List c(al al1)
    {
        return al1.d;
    }

    static ListView d(al al1)
    {
        return al1.j;
    }

    static Map d()
    {
        return c;
    }

    static ao e(al al1)
    {
        return al1.g;
    }

    static ad e()
    {
        return u;
    }

    static int f(al al1)
    {
        return al1.t;
    }

    static GridView g(al al1)
    {
        return al1.k;
    }

    public final void a()
    {
        e = new ArrayList();
        View view = ((LayoutInflater)f.getSystemService("layout_inflater")).inflate(0x7f03003a, null);
        i = (EditText)view.findViewById(0x7f0900d8);
        j = (ListView)view.findViewById(0x7f0900d9);
        Collections.sort(d, new d());
        j.setAdapter(new bl(f, d));
        i.addTextChangedListener(new an(this, (byte)0));
        j.setOnItemClickListener(this);
        o = new PopupWindow(f);
        o.setContentView(view);
        o.setWidth(f.getResources().getDimensionPixelSize(0x7f0b004f));
        o.setHeight(-2);
        o.setFocusable(true);
        o.setBackgroundDrawable(new BitmapDrawable());
        Button button = f.a();
        o.showAsDropDown(button);
    }

    public final void a(OrderItem orderitem)
    {
        Item item;
        int i1;
        item = null;
        i1 = 0;
_L3:
        int j1;
        int k1;
        j1 = d.size();
        k1 = 0;
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        List list;
        Item item1;
        if (((Item)d.get(i1)).getId() == orderitem.getItemId())
        {
            item1 = (Item)d.get(i1);
        } else
        {
            item1 = item;
        }
        i1++;
        item = item1;
        if (true) goto _L3; else goto _L2
_L2:
        for (; k1 < a.size(); k1++)
        {
            if (((Category)a.get(k1)).getId() == item.getCategoryId())
            {
                t = k1;
            }
        }

        ((POSApp)f.getApplicationContext()).a(t);
        g.notifyDataSetChanged();
        list = b((List)c.get(Long.valueOf(((Category)a.get(t)).getId())));
        k.setAdapter(new h(f, list, (Category)a.get(t), u));
        return;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        u = f.c();
        n = ((POSApp)f.getApplicationContext()).b();
        r = n.getDecimalPlace();
        p = com.aadhk.restpos.util.o.e();
        q = com.aadhk.restpos.util.o.f();
        s = com.aadhk.restpos.util.o.d();
        a = u.a();
        b = f.l();
        c = new HashMap();
        Category category;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); c.put(Long.valueOf(category.getId()), u.a(category.getId(), n.isItemPriceIncludeTax(), n.getTax1(), n.getTax2(), n.getTax3(), n.getDecimalPlace())))
        {
            category = (Category)iterator.next();
        }

        d = new ArrayList();
        for (int i1 = 0; i1 < a.size(); i1++)
        {
            Item item;
            for (Iterator iterator1 = ((List)c.get(Long.valueOf(((Category)a.get(i1)).getId()))).iterator(); iterator1.hasNext(); d.add(item))
            {
                item = (Item)iterator1.next();
            }

        }

        View view = f.findViewById(0x7f09005f);
        boolean flag;
        GridView gridview;
        List list;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        m = flag;
        h = (Button)l.findViewById(0x7f090184);
        h.setOnClickListener(this);
        if (m)
        {
            h.setVisibility(8);
        } else
        {
            h.setVisibility(0);
        }
        t = ((POSApp)f.getApplicationContext()).o();
        if (t > -1 + a.size())
        {
            t = 0;
        }
        gridview = (GridView)l.findViewById(0x7f090182);
        k = (GridView)l.findViewById(0x7f090183);
        g = new ao(this);
        gridview.setAdapter(g);
        gridview.setSelection(t);
        list = b((List)c.get(Long.valueOf(((Category)a.get(t)).getId())));
        k.setAdapter(new h(f, list, (Category)a.get(t), u));
        gridview.setOnItemClickListener(new am(this));
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        f = (TakeOrderActivity)activity;
    }

    public final void onClick(View view)
    {
label0:
        {
            if (view == h)
            {
                if (b.size() <= 0)
                {
                    break label0;
                }
                dr dr1 = new dr();
                FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
                fragmenttransaction.replace(0x7f090060, dr1);
                fragmenttransaction.addToBackStack(null);
                fragmenttransaction.commit();
            }
            return;
        }
        Toast.makeText(f, 0x7f080232, 1).show();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        if (viewgroup != null)
        {
            viewgroup.removeAllViews();
        }
        l = layoutinflater.inflate(0x7f03007a, viewgroup, false);
        return l;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        int j1;
        String s1;
        Item item;
        OrderItem orderitem;
        PriceSchedule priceschedule;
        List list;
        if (e.isEmpty())
        {
            item = (Item)d.get(i1);
        } else
        {
            item = (Item)e.get(i1);
        }
        orderitem = new OrderItem();
        orderitem.setItemId(item.getId());
        orderitem.setItemName(item.getName());
        j1 = 0;
_L3:
        if (j1 >= a.size())
        {
            break MISSING_BLOCK_LABEL_418;
        }
        if (((Category)a.get(j1)).getId() != item.getCategoryId()) goto _L2; else goto _L1
_L1:
        t = j1;
        s1 = ((Category)a.get(j1)).getName();
_L4:
        orderitem.setCategoryName(s1);
        orderitem.setStartTime(com.aadhk.restpos.util.o.c());
        orderitem.setPrinterId(item.getPrinterId());
        orderitem.setModifierGroupId(item.getModifierGroupIds());
        orderitem.setKitchenNoteGroupId(item.getKitchenNoteGroupIds());
        orderitem.setQty(1);
        orderitem.setWarn(item.isWarn());
        orderitem.setWarnQty(item.getWarnQty());
        priceschedule = u.a(item.getId(), p, q, s);
        double d1 = item.getPrice();
        if (priceschedule != null)
        {
            orderitem.setDiscountName(priceschedule.getName());
            double d2 = priceschedule.getAmtRate();
            if (priceschedule.isDiscountAmt())
            {
                d1 -= d2;
            } else
            {
                d2 = com.aadhk.restpos.util.m.a(d1, d2, r);
                d1 -= d2;
            }
            orderitem.setDiscountAmt(d2);
        }
        orderitem.setItemPrice(d1);
        f.b(orderitem);
        f.f();
        o.dismiss();
        ((POSApp)f.getApplicationContext()).a(t);
        g.notifyDataSetChanged();
        list = b((List)c.get(Long.valueOf(((Category)a.get(t)).getId())));
        k.setAdapter(new h(f, list, (Category)a.get(t), u));
        return;
_L2:
        j1++;
          goto _L3
        s1 = null;
          goto _L4
    }

    public final void onResume()
    {
        super.onResume();
    }
}
