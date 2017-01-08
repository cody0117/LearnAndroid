// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ListView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.c.dr;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.g.w;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.r;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            hq, hl, hm, hn

public final class hk extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private ReportListActivity a;
    private ListView b;
    private String c[];
    private r d;
    private w e;
    private EditText f;
    private EditText g;
    private EditText h;
    private EditText i;
    private Button j;
    private View k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r[] = {
        "pref_report_end_day", "pref_report_sales", "pref_report_staff_sales", "pref_report_cb_pay", "pref_report_cb_profit", "pref_report_cb_Statistics", "pref_report_cb_item_amt", "pref_report_cb_item_qty", "pref_report_cb_item", "pref_report_cb_cancel_item", 
        "pref_report_cb_modifier"
    };
    private String s[];
    private String t[];
    private List u;
    private Company v;
    private boolean w[];
    private String x;

    public hk()
    {
    }

    static String a(hk hk1, String s1)
    {
        hk1.p = s1;
        return s1;
    }

    static List a(hk hk1, List list)
    {
        hk1.u = list;
        return list;
    }

    private void a()
    {
        (new d(new hq(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    private void a(EditText edittext, int i1)
    {
        g g1 = new g(a, p);
        g1.a(new hl(this, edittext, i1));
        g1.show();
    }

    static String[] a(hk hk1)
    {
        return hk1.c;
    }

    static String b(hk hk1, String s1)
    {
        hk1.l = s1;
        return s1;
    }

    private void b(EditText edittext, int i1)
    {
        dr dr1 = new dr(a, edittext.getText().toString());
        dr1.a(new hm(this, edittext, i1));
        dr1.show();
    }

    static String[] b(hk hk1)
    {
        return hk1.r;
    }

    static r c(hk hk1)
    {
        return hk1.d;
    }

    static String c(hk hk1, String s1)
    {
        hk1.n = s1;
        return s1;
    }

    static String d(hk hk1, String s1)
    {
        hk1.m = s1;
        return s1;
    }

    static boolean[] d(hk hk1)
    {
        return hk1.w;
    }

    static ReportListActivity e(hk hk1)
    {
        return hk1.a;
    }

    static String e(hk hk1, String s1)
    {
        hk1.o = s1;
        return s1;
    }

    static void f(hk hk1)
    {
        hk1.a();
    }

    static String g(hk hk1)
    {
        return hk1.q;
    }

    static String[] h(hk hk1)
    {
        return hk1.s;
    }

    static String[] i(hk hk1)
    {
        return hk1.t;
    }

    static String j(hk hk1)
    {
        return hk1.x;
    }

    static String k(hk hk1)
    {
        return hk1.l;
    }

    static String l(hk hk1)
    {
        return hk1.m;
    }

    static String m(hk hk1)
    {
        return hk1.n;
    }

    static String n(hk hk1)
    {
        return hk1.o;
    }

    static w o(hk hk1)
    {
        return hk1.e;
    }

    static List p(hk hk1)
    {
        return hk1.u;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        e = a.a();
        v = a.v();
        d = new r(a);
        p = com.aadhk.restpos.util.o.e();
        q = d.c();
        c = getResources().getStringArray(0x7f0e0017);
        String s1 = p;
        n = s1;
        l = s1;
        m = v.getTimeIn();
        o = v.getTimeOut();
        if (!com.aadhk.restpos.util.o.b(m, o) || !com.aadhk.restpos.util.o.b(m, com.aadhk.restpos.util.o.f())) goto _L2; else goto _L1
_L1:
        l = com.aadhk.restpos.util.o.b(l);
_L4:
        w = new boolean[r.length];
        for (int i1 = 0; i1 < r.length; i1++)
        {
            w[i1] = d.b(r[i1]);
        }

        break; /* Loop/switch isn't completed */
_L2:
        if (com.aadhk.restpos.util.o.b(m, o) && com.aadhk.restpos.util.o.b(com.aadhk.restpos.util.o.f(), o))
        {
            n = com.aadhk.restpos.util.o.a(n);
        }
        if (true) goto _L4; else goto _L3
_L3:
        b.setAdapter(new hn(this, a));
        if (a.a)
        {
            j.setVisibility(8);
            a();
        }
        f.setText(com.aadhk.restpos.util.o.e(l, q));
        g.setText(m);
        h.setText(com.aadhk.restpos.util.o.e(n, q));
        i.setText(o);
        return;
    }

    public final void onAttach(Activity activity)
    {
        a = (ReportListActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131296864: 
            a(f, 1);
            return;

        case 2131296865: 
            b(g, 1);
            return;

        case 2131296866: 
            a(h, 2);
            return;

        case 2131296867: 
            b(i, 2);
            return;

        case 2131296868: 
            a();
            break;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String as[] = new String[8];
        as[0] = getString(0x7f0801f9);
        as[1] = getString(0x7f080200);
        as[2] = getString(0x7f0802b5);
        as[3] = getString(0x7f0800ef);
        as[4] = getString(0x7f080308);
        as[5] = getString(0x7f0801fa);
        as[6] = getString(0x7f0801fb);
        as[7] = getString(0x7f0801fc);
        s = as;
        String as1[] = new String[4];
        as1[0] = getString(0x7f080204);
        as1[1] = getString(0x7f080205);
        as1[2] = getString(0x7f080206);
        as1[3] = getString(0x7f080207);
        t = as1;
        x = getString(0x7f0801ea);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        k = layoutinflater.inflate(0x7f03009c, viewgroup, false);
        b = (ListView)k.findViewById(0x7f0900a4);
        f = (EditText)k.findViewById(0x7f090260);
        g = (EditText)k.findViewById(0x7f090261);
        h = (EditText)k.findViewById(0x7f090262);
        i = (EditText)k.findViewById(0x7f090263);
        j = (Button)k.findViewById(0x7f090264);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        b.setOnItemClickListener(this);
        return k;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        CheckBox checkbox = (CheckBox)view.findViewById(0x7f090098);
        boolean flag;
        boolean flag1;
        if (!checkbox.isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        checkbox.setChecked(flag);
        flag1 = checkbox.isChecked();
        w[i1] = flag1;
        d.a(r[i1], flag1);
        if (a.a)
        {
            a();
        }
    }
}
