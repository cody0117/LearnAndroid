// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.ay;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.g;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            cv

public final class cu extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private TakeOrderActivity b;
    private v c;
    private Order d;
    private View e;
    private Resources f;

    public cu()
    {
    }

    static TakeOrderActivity a(cu cu1)
    {
        return cu1.b;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        c = new v(b.b());
        d = b.p();
        a = c.b(d.getTableId());
        ListView listview = (ListView)e.findViewById(0x7f0b0086);
        TextView textview = (TextView)e.findViewById(0x7f0b012a);
        if (a.size() > 0)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        listview.setAdapter(new ay(b, a));
        listview.setOnItemClickListener(this);
    }

    public final void onAttach(Activity activity)
    {
        b = (TakeOrderActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        f = getResources();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menu.removeItem(0x7f0b02a8);
        menu.removeItem(0x7f0b02ac);
        menu.removeItem(0x7f0b02aa);
        menu.removeItem(0x7f0b02a9);
        menu.removeItem(0x7f0b02ab);
        menu.removeItem(0x7f0b02ad);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = layoutinflater.inflate(0x7f030096, viewgroup, false);
        return e;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Order order = (Order)a.get(i);
        g g1 = new g(b);
        String s = f.getString(0x7f090219);
        Object aobj[] = new Object[1];
        aobj[0] = order.getTableName();
        g1.setTitle(String.format(s, aobj));
        g1.a(new cv(this, order));
        g1.show();
    }
}
