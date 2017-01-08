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
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
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
import com.aadhk.restpos.a.bd;
import com.aadhk.restpos.a.e;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            u, r, s, bh, 
//            t

public final class q extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private static List a;
    private static List b;
    private static Map c;
    private static TakeOrderActivity f;
    private static SQLiteDatabase n;
    private List d;
    private List e;
    private u g;
    private Button h;
    private EditText i;
    private ListView j;
    private GridView k;
    private View l;
    private boolean m;
    private com.aadhk.restpos.b.i o;
    private b p;
    private com.aadhk.restpos.b.q q;
    private Company r;
    private int s;
    private PopupWindow t;
    private String u;
    private String v;
    private int w;
    private int x;
    private int y;

    public q()
    {
        s = 3;
    }

    static int a(q q1, int i1)
    {
        q1.y = i1;
        return i1;
    }

    static TakeOrderActivity a()
    {
        return f;
    }

    static List a(q q1)
    {
        return q1.e;
    }

    private void a(int i1)
    {
        int j1;
        String s1;
        Item item;
        OrderItem orderitem;
        PriceSchedule priceschedule;
        if (e.isEmpty())
        {
            item = (Item)d.get(i1);
        } else
        {
            item = (Item)e.get(i1);
        }
        orderitem = new OrderItem();
        orderitem.setItemId(item.getId());
        orderitem.setNum(1);
        orderitem.setItemName(item.getName());
        j1 = 0;
_L3:
        if (j1 >= a.size())
        {
            break MISSING_BLOCK_LABEL_313;
        }
        if (((Category)a.get(j1)).getId() != item.getCategoryId()) goto _L2; else goto _L1
_L1:
        y = j1;
        s1 = ((Category)a.get(j1)).getName();
_L4:
        orderitem.setCategoryName(s1);
        orderitem.setStartTime(com.aadhk.restpos.f.i.c());
        orderitem.setPrinterId(item.getPrinterId());
        orderitem.setModifierGroupId(item.getModifierGroupIds());
        orderitem.setQty(item.getQty());
        orderitem.setWarn(item.isWarn());
        orderitem.setWarnQty(item.getWarnQty());
        priceschedule = q.a(item.getId(), u, v, x);
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
                d2 = com.aadhk.restpos.f.h.a(d1, d2, w);
                d1 -= d2;
            }
            orderitem.setDisAmt(d2);
        }
        orderitem.setItemPrice(d1);
        b.add(orderitem);
        f.b(b);
        f.d();
        f.c();
        t.dismiss();
        return;
_L2:
        j1++;
          goto _L3
        s1 = null;
          goto _L4
    }

    static EditText b(q q1)
    {
        return q1.i;
    }

    static List b()
    {
        return a;
    }

    static void b(q q1, int i1)
    {
        q1.a(i1);
    }

    static List c(q q1)
    {
        return q1.d;
    }

    static Map c()
    {
        return c;
    }

    static ListView d(q q1)
    {
        return q1.j;
    }

    static List d()
    {
        return b;
    }

    static SQLiteDatabase e()
    {
        return n;
    }

    static u e(q q1)
    {
        return q1.g;
    }

    static GridView f(q q1)
    {
        return q1.k;
    }

    private void f()
    {
        d = new ArrayList();
        e = new ArrayList();
        for (int i1 = 0; i1 < a.size(); i1++)
        {
            Item item;
            for (Iterator iterator = ((List)c.get(Long.valueOf(((Category)a.get(i1)).getId()))).iterator(); iterator.hasNext(); d.add(item))
            {
                item = (Item)iterator.next();
            }

        }

    }

    static int g(q q1)
    {
        return q1.y;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        a = p.b();
        b = f.q();
        c = new HashMap();
        Category category;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); c.put(Long.valueOf(category.getId()), o.a(category.getId(), r.isIncludeTax(), r.getTax1(), r.getTax2(), r.getDecimalPlace())))
        {
            category = (Category)iterator.next();
        }

        f();
        View view = f.findViewById(0x7f0b005c);
        boolean flag;
        GridView gridview;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        m = flag;
        h = (Button)l.findViewById(0x7f0b013f);
        h.setOnClickListener(this);
        if (m)
        {
            h.setVisibility(8);
        } else
        {
            h.setVisibility(0);
        }
        y = ((POSApp)f.getApplicationContext()).e();
        if (y > -1 + a.size())
        {
            y = 0;
        }
        gridview = (GridView)l.findViewById(0x7f0b013d);
        k = (GridView)l.findViewById(0x7f0b013e);
        g = new u(this);
        gridview.setAdapter(g);
        layoutparams = gridview.getLayoutParams();
        layoutparams.height = f.getResources().getDimensionPixelSize(0x7f0c004e);
        gridview.setLayoutParams(layoutparams);
        gridview.setSelection(y);
        k.setAdapter(new e(f, (List)c.get(Long.valueOf(((Category)a.get(y)).getId())), b, (Category)a.get(y), n));
        gridview.setOnItemClickListener(new r(this));
        k.setOnItemClickListener(new s(this));
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
                bh bh1 = new bh();
                FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
                fragmenttransaction.replace(0x7f0b005b, bh1);
                fragmenttransaction.addToBackStack(null);
                fragmenttransaction.commit();
            }
            return;
        }
        Toast.makeText(f, 0x7f0901f5, 1).show();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        n = f.b();
        p = new b(n);
        o = new com.aadhk.restpos.b.i(n);
        q = new com.aadhk.restpos.b.q(n);
        r = ((POSApp)f.getApplicationContext()).b();
        w = r.getDecimalPlace();
        u = com.aadhk.restpos.f.i.e();
        v = com.aadhk.restpos.f.i.f();
        x = com.aadhk.restpos.f.i.d();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menu.removeItem(0x7f0b02a8);
        MenuItem menuitem = menu.add(0, s, 0, f.getResources().getString(0x7f09010f));
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
        l = layoutinflater.inflate(0x7f030065, viewgroup, false);
        return l;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        a(i1);
        ((POSApp)f.getApplicationContext()).a(y);
        g.notifyDataSetChanged();
        k.setAdapter(new e(f, (List)c.get(Long.valueOf(((Category)a.get(y)).getId())), b, (Category)a.get(y), n));
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == s)
        {
            View view = f.findViewById(s);
            View view1 = ((LayoutInflater)f.getSystemService("layout_inflater")).inflate(0x7f030032, null);
            i = (EditText)view1.findViewById(0x7f0b00c6);
            j = (ListView)view1.findViewById(0x7f0b00c7);
            j.setAdapter(new bd(f, d));
            i.addTextChangedListener(new t(this, (byte)0));
            j.setOnItemClickListener(this);
            t = new PopupWindow(f);
            t.setContentView(view1);
            t.setWidth(f.getResources().getDimensionPixelSize(0x7f0c004c));
            t.setHeight(-2);
            t.setFocusable(true);
            t.setBackgroundDrawable(new BitmapDrawable());
            t.showAsDropDown(view);
        }
        return true;
    }

    public final void onResume()
    {
        super.onResume();
    }
}
