// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.a.ba;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.l;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            an, ao

public final class am extends e
    implements android.view.View.OnClickListener
{

    private Context f;
    private String g;
    private String h;
    private LinearLayout i;
    private ExpandableListView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private Button n;
    private Button o;
    private f p;
    private POSPrinterSetting q;
    private List r;
    private String s;
    private String t;
    private String u;
    private String v;

    public am(Context context, POSPrinterSetting posprintersetting, String s1, String s2, List list, String s3, String s4)
    {
        super(context, 0x7f030043);
        f = context;
        t = s1;
        u = s2;
        h = s3;
        v = s4;
        q = posprintersetting;
        r = new ArrayList();
        Report report = new Report();
        report.setId(11);
        report.setReportItems(list);
        r.add(report);
        p = new f(context);
        g = (new l(context)).c();
        i = (LinearLayout)findViewById(0x7f0b00e9);
        k = (TextView)findViewById(0x7f0b00ea);
        l = (TextView)findViewById(0x7f0b005f);
        j = (ExpandableListView)findViewById(0x7f0b00eb);
        m = (TextView)findViewById(0x7f0b00ec);
        o = (Button)findViewById(0x7f0b00ed);
        n = (Button)findViewById(0x7f0b00ee);
        n.setOnClickListener(this);
        o.setOnClickListener(this);
        if (!posprintersetting.isEnable())
        {
            o.setVisibility(8);
        }
        s = com.aadhk.product.library.c.c.c();
        b();
    }

    static Context a(am am1)
    {
        return am1.f;
    }

    static POSPrinterSetting b(am am1)
    {
        return am1.q;
    }

    private void b()
    {
        j.setAdapter(new ba(f, r));
        j.setGroupIndicator(null);
        j.setOnGroupClickListener(new an(this));
        for (int i1 = 0; i1 < r.size(); i1++)
        {
            j.expandGroup(i1);
        }

        if (t == null)
        {
            i.setVisibility(8);
        } else
        {
            i.setVisibility(0);
            k.setText(com.aadhk.restpos.f.i.c(t, g));
        }
        if (u == null)
        {
            l.setText(f.getString(0x7f0900e0));
        } else
        {
            l.setText(com.aadhk.restpos.f.i.c(u, g));
        }
        m.setText(com.aadhk.restpos.f.i.c(s, g));
    }

    static List c(am am1)
    {
        return am1.r;
    }

    static String d(am am1)
    {
        return am1.t;
    }

    static String e(am am1)
    {
        return am1.u;
    }

    static String f(am am1)
    {
        return am1.s;
    }

    static f g(am am1)
    {
        return am1.p;
    }

    public final void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131427565: 
            a a1 = new a(f, new ao(this), c.getString(0x7f090177));
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                a1.execute(null);
                return;
            }

        case 2131427566: 
            (new File(d.c)).mkdirs();
            String s1 = (new StringBuilder()).append(f.getString(0x7f0900eb)).append("_").append(u).toString();
            p.a(v, q, r, s1, t, u, s, null);
            return;
        }
    }
}
