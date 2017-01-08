// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.ReceiptListActivity;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            dw

public final class dv extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private ReceiptListActivity f;
    private String g;
    private int h;
    private String i;
    private int j;
    private SQLiteDatabase k;
    private m l;
    private View m;
    private ListView n;
    private TextView o;
    private TextView p;
    private List q;

    public dv()
    {
    }

    static List a(dv dv1)
    {
        return dv1.q;
    }

    static String b(dv dv1)
    {
        return dv1.i;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        double d1;
        super.onActivityCreated(bundle);
        k = f.b();
        j = f.g();
        l = new m(k);
        if (com.aadhk.restpos.f.i.b(c, d))
        {
            b = com.aadhk.restpos.f.i.a(b);
        }
        q = l.a(a, b, c, d);
        Iterator iterator;
        if (q.size() > 0)
        {
            o.setVisibility(8);
        } else
        {
            o.setVisibility(0);
        }
        n.setAdapter(new dw(this, f));
        n.setOnItemClickListener(this);
        iterator = q.iterator();
        for (d1 = 0.0D; iterator.hasNext(); d1 += ((Order)iterator.next()).getAmount()) { }
        if (j != 4) goto _L2; else goto _L1
_L1:
        e = com.aadhk.restpos.f.i.d(a, i);
_L4:
        p.setText((new StringBuilder()).append(e).append("\n").append(getString(0x7f0901b1)).append(" ").append(com.aadhk.restpos.f.j.a(h, d1, g)).toString());
        return;
_L2:
        if (j == 3 || j == 5)
        {
            e = (new StringBuilder()).append(com.aadhk.restpos.f.i.d(a, i)).append(" / ").append(com.aadhk.restpos.f.i.d(b, i)).toString();
        } else
        if (j == 2)
        {
            e = com.aadhk.restpos.f.i.d(a);
        } else
        if (j == 1)
        {
            e = com.aadhk.restpos.f.i.e(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onAttach(Activity activity)
    {
        f = (ReceiptListActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            a = bundle1.getString("fromDate");
            b = bundle1.getString("toDate");
        }
        g = f.k();
        h = f.l();
        c = f.h();
        d = f.i();
        i = f.j();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        m = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        n = (ListView)m.findViewById(0x7f0b0086);
        o = (TextView)m.findViewById(0x7f0b012a);
        p = (TextView)m.findViewById(0x7f0b0118);
        return m;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Order order = (Order)q.get(i1);
        f.a(order);
    }
}
