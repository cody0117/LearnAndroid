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
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.bl;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.d;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import com.viewpagerindicator.TabPageIndicator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            aj, ah, ai, dr

public final class ag extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private static List a;
    private static List b;
    private static TakeOrderActivity e;
    private static Map k;
    private static ad t;
    private List c;
    private List d;
    private ListView f;
    private Button g;
    private EditText h;
    private View i;
    private boolean j;
    private TabPageIndicator l;
    private Company m;
    private PopupWindow n;
    private String o;
    private String p;
    private int q;
    private int r;
    private int s;

    public ag()
    {
    }

    static List a(ag ag1)
    {
        return ag1.d;
    }

    static EditText b(ag ag1)
    {
        return ag1.h;
    }

    static TakeOrderActivity b()
    {
        return e;
    }

    static List c()
    {
        return a;
    }

    static List c(ag ag1)
    {
        return ag1.c;
    }

    static ListView d(ag ag1)
    {
        return ag1.f;
    }

    static Map d()
    {
        return k;
    }

    static List e()
    {
        return b;
    }

    static ad f()
    {
        return t;
    }

    private void g()
    {
        ViewPager viewpager = (ViewPager)i.findViewById(0x7f090186);
        viewpager.setAdapter(new aj(this, getChildFragmentManager()));
        l = (TabPageIndicator)i.findViewById(0x7f090185);
        l.a(viewpager);
        l.a(new ah(this));
        l.a(((POSApp)e.getApplicationContext()).o());
    }

    public final void a()
    {
        d = new ArrayList();
        View view = ((LayoutInflater)e.getSystemService("layout_inflater")).inflate(0x7f03003a, null);
        h = (EditText)view.findViewById(0x7f0900d8);
        f = (ListView)view.findViewById(0x7f0900d9);
        Collections.sort(c, new d());
        f.setAdapter(new bl(e, c));
        h.addTextChangedListener(new ai(this, (byte)0));
        f.setOnItemClickListener(this);
        n = new PopupWindow(e);
        n.setContentView(view);
        n.setWidth(e.getResources().getDimensionPixelSize(0x7f0b004f));
        n.setHeight(-2);
        n.setFocusable(true);
        n.setBackgroundDrawable(new BitmapDrawable());
        Button button = e.a();
        n.showAsDropDown(button);
    }

    public final void a(OrderItem orderitem)
    {
        Item item;
        int i1;
        b = e.l();
        item = null;
        i1 = 0;
_L3:
        int j1;
        int k1;
        j1 = c.size();
        k1 = 0;
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        Item item1;
        if (((Item)c.get(i1)).getId() == orderitem.getItemId())
        {
            item1 = (Item)c.get(i1);
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
                s = k1;
            }
        }

        ((POSApp)e.getApplicationContext()).a(s);
        g();
        return;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        t = e.c();
        m = ((POSApp)e.getApplicationContext()).b();
        q = m.getDecimalPlace();
        o = com.aadhk.restpos.util.o.e();
        p = com.aadhk.restpos.util.o.f();
        r = com.aadhk.restpos.util.o.d();
        a = t.a();
        b = e.l();
        k = new HashMap();
        Category category;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); k.put(Long.valueOf(category.getId()), t.a(category.getId(), m.isItemPriceIncludeTax(), m.getTax1(), m.getTax2(), m.getTax3(), m.getDecimalPlace())))
        {
            category = (Category)iterator.next();
        }

        c = new ArrayList();
        for (int i1 = 0; i1 < a.size(); i1++)
        {
            Item item;
            for (Iterator iterator1 = ((List)k.get(Long.valueOf(((Category)a.get(i1)).getId()))).iterator(); iterator1.hasNext(); c.add(item))
            {
                item = (Item)iterator1.next();
            }

        }

        View view = e.findViewById(0x7f09005f);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        g = (Button)i.findViewById(0x7f090184);
        g.setOnClickListener(this);
        if (j)
        {
            g.setVisibility(8);
            return;
        } else
        {
            g.setVisibility(0);
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        e = (TakeOrderActivity)activity;
    }

    public final void onClick(View view)
    {
label0:
        {
            if (view == g)
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
        Toast.makeText(e, 0x7f080232, 1).show();
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
        i = layoutinflater.inflate(0x7f03007c, viewgroup, false);
        return i;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        int j1;
        String s1;
        Item item;
        OrderItem orderitem;
        PriceSchedule priceschedule;
        if (d.isEmpty())
        {
            item = (Item)c.get(i1);
        } else
        {
            item = (Item)d.get(i1);
        }
        orderitem = new OrderItem();
        orderitem.setItemId(item.getId());
        orderitem.setItemName(item.getName());
        j1 = 0;
_L3:
        if (j1 >= a.size())
        {
            break MISSING_BLOCK_LABEL_327;
        }
        if (((Category)a.get(j1)).getId() != item.getCategoryId()) goto _L2; else goto _L1
_L1:
        s = j1;
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
        priceschedule = t.a(item.getId(), o, p, r);
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
                d2 = com.aadhk.restpos.util.m.a(d1, d2, q);
                d1 -= d2;
            }
            orderitem.setDiscountAmt(d2);
        }
        orderitem.setItemPrice(d1);
        e.b(orderitem);
        a(orderitem);
        e.f();
        n.dismiss();
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
        g();
    }
}
