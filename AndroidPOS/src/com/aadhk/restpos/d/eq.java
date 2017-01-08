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
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.c.bq;
import com.aadhk.restpos.util.o;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            er, es, eu

public final class eq extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private PayInOutActivity a;
    private List b;
    private TextView c;
    private ListView d;
    private View e;
    private int f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;

    public eq()
    {
    }

    static String a(eq eq1)
    {
        return eq1.h;
    }

    static List a(eq eq1, List list)
    {
        eq1.b = list;
        return list;
    }

    static String b(eq eq1)
    {
        return eq1.k;
    }

    static String c(eq eq1)
    {
        return eq1.i;
    }

    static String d(eq eq1)
    {
        return eq1.l;
    }

    static PayInOutActivity e(eq eq1)
    {
        return eq1.a;
    }

    static List f(eq eq1)
    {
        return eq1.b;
    }

    static ListView g(eq eq1)
    {
        return eq1.d;
    }

    static View h(eq eq1)
    {
        return eq1.e;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (PayInOutActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = a.d();
        j = a.q();
        k = a.o();
        l = a.p();
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            h = bundle1.getString("fromDate");
            i = bundle1.getString("toDate");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = layoutinflater.inflate(0x7f0300c7, null);
        return e;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        CashRegister cashregister = (CashRegister)b.get(i1);
        String s = cashregister.getDate();
        String s1 = cashregister.getTime();
        String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        if (TextUtils.isEmpty(a.b()) || s2.compareTo(a.b()) > 0)
        {
            bq bq1 = new bq(a, cashregister, cashregister.getTranxType());
            bq1.b();
            bq1.a(new er(this));
            bq1.a(new es(this, cashregister));
            bq1.show();
        }
    }

    public final void onResume()
    {
        super.onResume();
        c = (TextView)e.findViewById(0x7f09015a);
        d = (ListView)e.findViewById(0x7f0900a4);
        d.setOnItemClickListener(this);
        if (f != 4) goto _L2; else goto _L1
_L1:
        g = o.e(h, j);
_L4:
        c.setText(g);
        if (o.b(k, l))
        {
            i = o.a(i);
        }
        (new d(new eu(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
_L2:
        if (f == 3 || f == 5)
        {
            g = (new StringBuilder()).append(o.e(h, j)).append(" / ").append(o.e(i, j)).toString();
        } else
        if (f == 2)
        {
            g = o.d(h);
        } else
        if (f == 1)
        {
            g = o.e(h);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
