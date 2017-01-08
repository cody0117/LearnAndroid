// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.restpos.ListTableActivity;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.ag;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.c.by;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.l;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ft

public final class fs extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private View a;
    private GridView b;
    private ListTableActivity c;
    private l d;
    private List e;
    private ag f;
    private m g;
    private v h;

    public fs()
    {
    }

    private void a(Table table, int k)
    {
        Order order = new Order();
        order.setTableId(table.getId());
        order.setStartTime(i.c());
        order.setPersonNum(k);
        order.setTableName(table.getName());
        order.setWaiterName(c.a());
        Intent intent;
        Bundle bundle;
        if (TextUtils.isEmpty(d.r()))
        {
            order.setOrderNum(d.q());
        } else
        {
            order.setOrderNum(j.f(d.r()));
        }
        intent = new Intent();
        bundle = new Bundle();
        bundle.putParcelable("bundleOrder", order);
        intent.putExtras(bundle);
        intent.setClass(c, com/aadhk/restpos/TakeOrderActivity);
        startActivity(intent);
    }

    static void a(fs fs1, Table table, int k)
    {
        fs1.a(table, k);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        d = new l(c);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = c.b();
        h = new v(sqlitedatabase);
        g = new m(sqlitedatabase);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        c = (ListTableActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        a = layoutinflater.inflate(0x7f03006a, viewgroup, false);
        b = (GridView)a.findViewById(0x7f0b0146);
        b.setOnItemClickListener(this);
        return a;
    }

    public final void onItemClick(AdapterView adapterview, View view, int k, long l1)
    {
        Table table = (Table)e.get(k);
        if (table.isOpen())
        {
            Order order = g.b(table.getId());
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundleOrder", order);
            bundle.putBoolean("bundleOrdered", true);
            intent.putExtras(bundle);
            intent.setClass(c, com/aadhk/restpos/TakeOrderActivity);
            startActivity(intent);
            return;
        }
        if (d.n() > 0)
        {
            a(table, d.n());
            return;
        } else
        {
            by by1 = new by(c);
            by1.setTitle(0x7f090182);
            by1.a(new ft(this, table));
            by1.show();
            return;
        }
    }

    public final void onResume()
    {
        super.onResume();
        e = h.c();
        f = new ag(c, e);
        b.setAdapter(f);
    }
}
