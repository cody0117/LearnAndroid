// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.ReceiptListActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.v;
import com.aadhk.restpos.util.o;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            hf, hh

public final class he extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private ReceiptListActivity f;
    private String g;
    private String h;
    private int i;
    private v j;
    private View k;
    private ListView l;
    private TextView m;
    private TextView n;
    private List o;

    public he()
    {
    }

    static String a(he he1)
    {
        return he1.a;
    }

    static List a(he he1, List list)
    {
        he1.o = list;
        return list;
    }

    static String b(he he1)
    {
        return he1.b;
    }

    static String c(he he1)
    {
        return he1.c;
    }

    static String d(he he1)
    {
        return he1.d;
    }

    static v e(he he1)
    {
        return he1.j;
    }

    static ReceiptListActivity f(he he1)
    {
        return he1.f;
    }

    static List g(he he1)
    {
        return he1.o;
    }

    static String h(he he1)
    {
        return he1.g;
    }

    static String i(he he1)
    {
        return he1.h;
    }

    protected final void a()
    {
        if (o.size() > 0)
        {
            m.setVisibility(8);
        } else
        {
            m.setVisibility(0);
        }
        l.setAdapter(new hf(this, f));
        l.setOnItemClickListener(this);
        for (Iterator iterator = o.iterator(); iterator.hasNext(); ((Order)iterator.next()).getAmount()) { }
        if (i != 4) goto _L2; else goto _L1
_L1:
        e = com.aadhk.restpos.util.o.e(a, g);
_L4:
        n.setText(e);
        return;
_L2:
        if (i == 3 || i == 5)
        {
            e = (new StringBuilder()).append(com.aadhk.restpos.util.o.e(a, g)).append(" / ").append(com.aadhk.restpos.util.o.e(b, g)).toString();
        } else
        if (i == 2)
        {
            e = com.aadhk.restpos.util.o.d(a);
        } else
        if (i == 1)
        {
            e = com.aadhk.restpos.util.o.e(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        j = f.b();
        i = f.e();
        if (com.aadhk.restpos.util.o.b(c, d))
        {
            b = com.aadhk.restpos.util.o.a(b);
        }
        (new d(new hh(this, (byte)0), f, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
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
        c = f.o();
        d = f.p();
        g = f.q();
        h = f.r();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        k = layoutinflater.inflate(0x7f0300d2, viewgroup, false);
        l = (ListView)k.findViewById(0x7f0900a4);
        m = (TextView)k.findViewById(0x7f09016e);
        n = (TextView)k.findViewById(0x7f09015a);
        return k;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Order order = (Order)o.get(i1);
        f.a(order);
    }
}
