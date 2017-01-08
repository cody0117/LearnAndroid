// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.os.AsyncTask;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.a.bf;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.r;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bd, be

public final class bc extends e
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
    private g p;
    private POSPrinterSetting q;
    private List r;
    private String s;
    private String t;
    private String u;
    private r v;
    private String w;

    public bc(Context context, POSPrinterSetting posprintersetting, String s1, String s2, List list, String s3, r r1)
    {
        super(context, 0x7f030052);
        f = context;
        t = s1;
        u = s2;
        w = s3;
        v = r1;
        q = posprintersetting;
        r = new ArrayList();
        Report report = new Report();
        report.setId(11);
        report.setReportItems(list);
        r.add(report);
        p = new g(context);
        g = r1.c();
        h = r1.d();
        i = (LinearLayout)findViewById(0x7f090125);
        k = (TextView)findViewById(0x7f090126);
        l = (TextView)findViewById(0x7f09006b);
        j = (ExpandableListView)findViewById(0x7f090127);
        m = (TextView)findViewById(0x7f090128);
        o = (Button)findViewById(0x7f090129);
        n = (Button)findViewById(0x7f09012a);
        n.setOnClickListener(this);
        o.setOnClickListener(this);
        if (!posprintersetting.isEnable())
        {
            o.setVisibility(8);
        }
        s = com.aadhk.product.library.c.c.c();
        b();
    }

    static Context a(bc bc1)
    {
        return bc1.f;
    }

    static POSPrinterSetting b(bc bc1)
    {
        return bc1.q;
    }

    private void b()
    {
        j.setAdapter(new bf(f, r));
        j.setGroupIndicator(null);
        j.setOnGroupClickListener(new bd(this));
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
            k.setText(com.aadhk.restpos.util.o.a(t, g, h));
        }
        if (u == null)
        {
            l.setText(f.getString(0x7f08010f));
        } else
        {
            l.setText(com.aadhk.restpos.util.o.a(u, g, h));
        }
        m.setText(com.aadhk.restpos.util.o.a(s, g, h));
    }

    static List c(bc bc1)
    {
        return bc1.r;
    }

    static String d(bc bc1)
    {
        return bc1.t;
    }

    static String e(bc bc1)
    {
        return bc1.u;
    }

    static String f(bc bc1)
    {
        return bc1.s;
    }

    static g g(bc bc1)
    {
        return bc1.p;
    }

    public final void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131296553: 
            (new d(new be(this), f, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;

        case 2131296554: 
            (new File(f.c)).mkdirs();
            break;
        }
        String s1 = (new StringBuilder()).append(f.getString(0x7f08011a)).append("_").append(u).toString();
        p.a(w, q, r, s1, t, u, s, null);
    }
}
