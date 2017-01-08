// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
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
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.b.j;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.s;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.c.cg;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            el, em, en

public final class ek extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private ReportListActivity a;
    private ListView b;
    private String c[];
    private l d;
    private SQLiteDatabase e;
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
        "pref_report_end_day", "pref_report_staff_sales", "pref_report_cb_pay", "pref_report_cb_Statistics", "pref_report_cb_item_amt", "pref_report_cb_item_qty", "pref_report_cb_item", "pref_report_cb_cancel_item", "pref_report_cb_modifier"
    };
    private List s;
    private s t;
    private n u;
    private j v;
    private Company w;
    private boolean x[];

    public ek()
    {
    }

    static String a(ek ek1, String s1)
    {
        ek1.p = s1;
        return s1;
    }

    private void a()
    {
        s = new ArrayList();
        if (x[0])
        {
            s.add(t.a(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString()));
        }
        if (x[1])
        {
            s.add(t.b(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString()));
        }
        if (x[2])
        {
            s.add(t.a(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString(), null));
        }
        if (x[3])
        {
            s.add(t.c(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString()));
        }
        if (x[4])
        {
            List list4 = u.a((new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString(), "amt desc");
            a(list4);
            Report report4 = new Report();
            report4.setId(12);
            report4.setName(c[4]);
            report4.setReportItems(list4);
            s.add(report4);
        }
        if (x[5])
        {
            List list3 = u.a((new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString(), "qty desc");
            b(list3);
            Report report3 = new Report();
            report3.setId(13);
            report3.setName(c[5]);
            report3.setReportItems(list3);
            s.add(report3);
        }
        if (x[6])
        {
            List list2 = u.a(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString(), false);
            Report report2 = new Report();
            report2.setName(c[6]);
            report2.setReportItems(list2);
            s.add(report2);
        }
        if (x[7])
        {
            List list1 = u.a(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString(), true);
            Report report1 = new Report();
            report1.setName(c[7]);
            report1.setReportItems(list1);
            s.add(report1);
        }
        if (x[8])
        {
            List list = v.a(a, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString());
            Report report = new Report();
            report.setName(c[8]);
            report.setReportItems(list);
            s.add(report);
        }
        a.a(s, (new StringBuilder()).append(l).append(" ").append(m).toString(), (new StringBuilder()).append(n).append(" ").append(o).toString());
    }

    private static void a(int i1, List list)
    {
        do
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ReportItem reportitem = (ReportItem)iterator.next();
                i1--;
                reportitem.setPercentage(1 + reportitem.getPercentage());
            } while (i1 != 0);
        } while (i1 > 0);
    }

    private void a(EditText edittext, int i1)
    {
        com.aadhk.restpos.c.j j1 = new com.aadhk.restpos.c.j(a, p);
        j1.a(new el(this, edittext, i1));
        j1.show();
    }

    private static void a(List list)
    {
        int i1 = 0;
        if (!list.isEmpty())
        {
            Iterator iterator = list.iterator();
            int j1;
            ReportItem reportitem1;
            for (j1 = 0; iterator.hasNext(); j1 = (int)((double)j1 + reportitem1.getAmount()))
            {
                reportitem1 = (ReportItem)iterator.next();
            }

            for (Iterator iterator1 = list.iterator(); iterator1.hasNext();)
            {
                ReportItem reportitem = (ReportItem)iterator1.next();
                int l1 = (int)((100D * reportitem.getAmount()) / (double)j1);
                reportitem.setPercentage(l1);
                i1 += l1;
            }

            int k1 = 100 - i1;
            if (k1 > 0)
            {
                a(k1, list);
            }
        }
    }

    static String[] a(ek ek1)
    {
        return ek1.c;
    }

    static String b(ek ek1, String s1)
    {
        ek1.l = s1;
        return s1;
    }

    private void b(EditText edittext, int i1)
    {
        cg cg1 = new cg(a, edittext.getText().toString());
        cg1.a(new em(this, edittext, i1));
        cg1.show();
    }

    private static void b(List list)
    {
        int i1 = 0;
        if (!list.isEmpty())
        {
            Iterator iterator = list.iterator();
            int j1;
            for (j1 = 0; iterator.hasNext(); j1 += ((ReportItem)iterator.next()).getCount()) { }
            for (Iterator iterator1 = list.iterator(); iterator1.hasNext();)
            {
                ReportItem reportitem = (ReportItem)iterator1.next();
                int l1 = (100 * reportitem.getCount()) / j1;
                reportitem.setPercentage(l1);
                i1 += l1;
            }

            int k1 = 100 - i1;
            if (k1 > 0)
            {
                a(k1, list);
            }
        }
    }

    static String[] b(ek ek1)
    {
        return ek1.r;
    }

    static l c(ek ek1)
    {
        return ek1.d;
    }

    static String c(ek ek1, String s1)
    {
        ek1.n = s1;
        return s1;
    }

    static String d(ek ek1, String s1)
    {
        ek1.m = s1;
        return s1;
    }

    static boolean[] d(ek ek1)
    {
        return ek1.x;
    }

    static ReportListActivity e(ek ek1)
    {
        return ek1.a;
    }

    static String e(ek ek1, String s1)
    {
        ek1.o = s1;
        return s1;
    }

    static void f(ek ek1)
    {
        ek1.a();
    }

    static String g(ek ek1)
    {
        return ek1.q;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        e = a.a();
        t = new s(e);
        u = new n(e);
        v = new j(e);
        w = a.n();
        d = new l(a);
        p = com.aadhk.restpos.f.i.e();
        q = d.c();
        c = getResources().getStringArray(0x7f070017);
        String s1 = p;
        n = s1;
        l = s1;
        m = w.getTimeIn();
        o = w.getTimeOut();
        if (!com.aadhk.restpos.f.i.b(m, o) || !com.aadhk.restpos.f.i.b(m, com.aadhk.restpos.f.i.f())) goto _L2; else goto _L1
_L1:
        l = com.aadhk.restpos.f.i.b(l);
_L4:
        x = new boolean[r.length];
        for (int i1 = 0; i1 < r.length; i1++)
        {
            x[i1] = d.c(r[i1]);
        }

        break; /* Loop/switch isn't completed */
_L2:
        if (com.aadhk.restpos.f.i.b(m, o) && com.aadhk.restpos.f.i.b(com.aadhk.restpos.f.i.f(), o))
        {
            n = com.aadhk.restpos.f.i.a(n);
        }
        if (true) goto _L4; else goto _L3
_L3:
        b.setAdapter(new en(this, a));
        if (a.a)
        {
            j.setVisibility(8);
            a();
        }
        f.setText(com.aadhk.restpos.f.i.d(l, q));
        g.setText(m);
        h.setText(com.aadhk.restpos.f.i.d(n, q));
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

        case 2131427850: 
            a(f, 1);
            return;

        case 2131427851: 
            b(g, 1);
            return;

        case 2131427852: 
            a(h, 2);
            return;

        case 2131427853: 
            b(i, 2);
            return;

        case 2131427854: 
            a();
            break;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        k = layoutinflater.inflate(0x7f030084, viewgroup, false);
        b = (ListView)k.findViewById(0x7f0b0086);
        f = (EditText)k.findViewById(0x7f0b020a);
        g = (EditText)k.findViewById(0x7f0b020b);
        h = (EditText)k.findViewById(0x7f0b020c);
        i = (EditText)k.findViewById(0x7f0b020d);
        j = (Button)k.findViewById(0x7f0b020e);
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
        CheckBox checkbox = (CheckBox)view.findViewById(0x7f0b011e);
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
        x[i1] = flag1;
        d.a(r[i1], flag1);
        if (a.a)
        {
            a();
        }
    }
}
