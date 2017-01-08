// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.a.e;
import com.aadhk.restpos.TableListActivity;
import com.aadhk.restpos.a.aj;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.c.dd;
import com.aadhk.restpos.g.ac;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

// Referenced classes of package com.aadhk.restpos.d:
//            kj, kf, kh, kg

public final class ke extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private View a;
    private GridView b;
    private TableListActivity c;
    private r d;
    private List e;
    private aj f;
    private ac g;
    private Timer h;
    private int i;

    public ke()
    {
        e = new ArrayList();
    }

    static int a(ke ke1)
    {
        return ke1.i;
    }

    static List a(ke ke1, List list)
    {
        ke1.e = list;
        return list;
    }

    private void a(Table table, int j)
    {
        Order order = new Order();
        order.setTableId(table.getId());
        order.setOrderTime(o.c());
        order.setPersonNum(j);
        order.setTableName(table.getName());
        order.setWaiterName(c.a());
        if (TextUtils.isEmpty(d.u()))
        {
            order.setOrderNum((new StringBuilder()).append(d.r()).append(d.s()).append(d.t()).toString());
        } else
        {
            order.setOrderNum(p.f(d.u()));
        }
        q.a(c, order, null, false);
    }

    static void a(ke ke1, Table table, int j)
    {
        ke1.a(table, j);
    }

    static ac b(ke ke1)
    {
        return ke1.g;
    }

    static List c(ke ke1)
    {
        return ke1.e;
    }

    static aj d(ke ke1)
    {
        return ke1.f;
    }

    static TableListActivity e(ke ke1)
    {
        return ke1.c;
    }

    public final void a(List list, int j)
    {
        e = list;
        i = j;
        f.a(list);
        f.notifyDataSetChanged();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        d = new r(c);
        g = c.b();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        c = (TableListActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        a = layoutinflater.inflate(0x7f030080, viewgroup, false);
        b = (GridView)a.findViewById(0x7f09018d);
        b.setOnItemClickListener(this);
        f = new aj(c, e);
        b.setAdapter(f);
        return a;
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        Table table = (Table)e.get(j);
        if (table.isOpen())
        {
            (new d(new kj(this, table.getId()), c, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
        if (d.n() > 0)
        {
            a(table, d.n());
            return;
        } else
        {
            dd dd1 = new dd(c);
            dd1.setTitle(0x7f0801ba);
            dd1.a(new kf(this, table));
            dd1.show();
            return;
        }
    }

    public final void onPause()
    {
        if (h != null)
        {
            h.cancel();
        }
        super.onPause();
    }

    public final void onResume()
    {
        super.onResume();
        if (d.v())
        {
            h = new Timer();
            h.schedule(new kh(this, (byte)0), 0L, 5000L);
            return;
        } else
        {
            (new e(new kg(this, (byte)0))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
    }
}
