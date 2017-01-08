// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
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
import com.aadhk.restpos.a.bd;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.q;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.f.h;
import com.viewpagerindicator.TabPageIndicator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bh, n, o, m

public final class l extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private static List a;
    private static List b;
    private static TakeOrderActivity e;
    private static Map k;
    private static SQLiteDatabase m;
    private List c;
    private List d;
    private ListView f;
    private Button g;
    private EditText h;
    private View i;
    private boolean j;
    private TabPageIndicator l;
    private i n;
    private b o;
    private q p;
    private Company q;
    private int r;
    private PopupWindow s;
    private String t;
    private String u;
    private int v;
    private int w;
    private int x;

    public l()
    {
        r = 3;
    }

    static TakeOrderActivity a()
    {
        return e;
    }

    static List a(l l1)
    {
        return l1.d;
    }

    static EditText b(l l1)
    {
        return l1.h;
    }

    static List b()
    {
        return a;
    }

    static List c(l l1)
    {
        return l1.c;
    }

    static Map c()
    {
        return k;
    }

    static ListView d(l l1)
    {
        return l1.f;
    }

    static List d()
    {
        return b;
    }

    static SQLiteDatabase e()
    {
        return m;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        a = o.b();
        b = e.q();
        k = new HashMap();
        Category category;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); k.put(Long.valueOf(category.getId()), n.a(category.getId(), q.isIncludeTax(), q.getTax1(), q.getTax2(), q.getDecimalPlace())))
        {
            category = (Category)iterator.next();
        }

        View view = e.findViewById(0x7f0b005c);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        g = (Button)i.findViewById(0x7f0b013f);
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
                bh bh1 = new bh();
                FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
                fragmenttransaction.replace(0x7f0b005b, bh1);
                fragmenttransaction.addToBackStack(null);
                fragmenttransaction.commit();
            }
            return;
        }
        Toast.makeText(e, 0x7f0901f5, 1).show();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        m = e.b();
        o = new b(m);
        n = new i(m);
        p = new q(m);
        q = ((POSApp)e.getApplicationContext()).b();
        v = q.getDecimalPlace();
        t = com.aadhk.restpos.f.i.e();
        u = com.aadhk.restpos.f.i.f();
        w = com.aadhk.restpos.f.i.d();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menu.removeItem(0x7f0b02a8);
        MenuItem menuitem = menu.add(0, r, 0, e.getResources().getString(0x7f09010f));
        menuitem.setIcon(0x7f0200ad);
        MenuItemCompat.setShowAsAction(menuitem, 6);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        if (viewgroup != null)
        {
            viewgroup.removeAllViews();
        }
        i = layoutinflater.inflate(0x7f030067, viewgroup, false);
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
        orderitem.setNum(1);
        orderitem.setItemName(item.getName());
        j1 = 0;
_L3:
        if (j1 >= a.size())
        {
            break MISSING_BLOCK_LABEL_375;
        }
        if (((Category)a.get(j1)).getId() != item.getCategoryId()) goto _L2; else goto _L1
_L1:
        x = j1;
        s1 = ((Category)a.get(j1)).getName();
_L4:
        orderitem.setCategoryName(s1);
        orderitem.setStartTime(com.aadhk.restpos.f.i.c());
        orderitem.setPrinterId(item.getPrinterId());
        orderitem.setModifierGroupId(item.getModifierGroupIds());
        orderitem.setQty(item.getQty());
        orderitem.setWarn(item.isWarn());
        orderitem.setWarnQty(item.getWarnQty());
        priceschedule = p.a(item.getId(), t, u, w);
        double d1 = item.getPrice();
        if (priceschedule != null)
        {
            orderitem.setDisName(priceschedule.getName());
            double d2 = priceschedule.getAmtRate();
            if (priceschedule.isDisAmt())
            {
                d1 -= d2;
            } else
            {
                d2 = com.aadhk.restpos.f.h.a(d1, d2, v);
                d1 -= d2;
            }
            orderitem.setDisAmt(d2);
        }
        orderitem.setItemPrice(d1);
        b.add(orderitem);
        e.b(b);
        e.d();
        e.c();
        ((POSApp)e.getApplicationContext()).a(x);
        l.a(((POSApp)e.getApplicationContext()).e());
        s.dismiss();
        return;
_L2:
        j1++;
          goto _L3
        s1 = null;
          goto _L4
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == r)
        {
            View view = e.findViewById(r);
            View view1 = ((LayoutInflater)e.getSystemService("layout_inflater")).inflate(0x7f030032, null);
            c = new ArrayList();
            d = new ArrayList();
            for (int i1 = 0; i1 < a.size(); i1++)
            {
                Item item;
                for (Iterator iterator = ((List)k.get(Long.valueOf(((Category)a.get(i1)).getId()))).iterator(); iterator.hasNext(); c.add(item))
                {
                    item = (Item)iterator.next();
                }

            }

            h = (EditText)view1.findViewById(0x7f0b00c6);
            f = (ListView)view1.findViewById(0x7f0b00c7);
            f.setAdapter(new bd(e, c));
            h.addTextChangedListener(new n(this, (byte)0));
            f.setOnItemClickListener(this);
            s = new PopupWindow(e);
            s.setContentView(view1);
            s.setWidth(e.getResources().getDimensionPixelSize(0x7f0c004c));
            s.setHeight(-2);
            s.setFocusable(true);
            s.setBackgroundDrawable(new BitmapDrawable());
            s.showAsDropDown(view);
        }
        return true;
    }

    public final void onResume()
    {
        super.onResume();
        ViewPager viewpager = (ViewPager)i.findViewById(0x7f0b0141);
        viewpager.setAdapter(new o(this, getChildFragmentManager()));
        l = (TabPageIndicator)i.findViewById(0x7f0b0140);
        l.a(viewpager);
        l.a(new m(this));
        l.a(((POSApp)e.getApplicationContext()).e());
    }
}
