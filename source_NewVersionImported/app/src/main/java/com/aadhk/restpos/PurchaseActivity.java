// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.a.d;
import com.aadhk.a.h;
import com.aadhk.a.j;
import com.aadhk.a.l;
import com.aadhk.a.m;
import com.aadhk.a.o;
import com.aadhk.b.a;
import com.aadhk.b.b;
import com.aadhk.restpos.c.ax;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bp, bq, bo

public class PurchaseActivity extends POSActivity
    implements android.view.View.OnClickListener
{

    private ImageView A;
    private ImageView B;
    private TextView C;
    private TextView D;
    private TextView E;
    private TextView F;
    private TextView G;
    private TextView H;
    private TextView I;
    j a;
    h l;
    private d m;
    private boolean n;
    private LinearLayout o;
    private LinearLayout p;
    private LinearLayout q;
    private LinearLayout r;
    private LinearLayout s;
    private LinearLayout t;
    private LinearLayout u;
    private ImageView v;
    private ImageView w;
    private ImageView x;
    private ImageView y;
    private ImageView z;

    public PurchaseActivity()
    {
        a = new bp(this);
        l = new bq(this);
    }

    private void a()
    {
        String as[] = com.aadhk.b.b.a(this);
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            a(as[j]);
        }

    }

    static void a(PurchaseActivity purchaseactivity, l l1)
    {
        o o1 = l1.a("com.aadhk.restpos.report.sales");
        if (o1 != null)
        {
            purchaseactivity.D.setText(o1.a());
        }
        o o2 = l1.a("com.aadhk.restpos.feature.receipt");
        if (o2 != null)
        {
            purchaseactivity.E.setText(o2.a());
        }
        o o3 = l1.a("com.aadhk.restpos.feature.kitchen");
        if (o3 != null)
        {
            purchaseactivity.F.setText(o3.a());
        }
        o o4 = l1.a("com.aadhk.restpos.feature.kitchen2");
        if (o4 != null)
        {
            purchaseactivity.G.setText(o4.a());
        }
        o o5 = l1.a("com.aadhk.restpos.feature.bar");
        if (o5 != null)
        {
            purchaseactivity.H.setText(o5.a());
        }
        o o6 = l1.a("com.aadhk.restpos.feature.price");
        if (o6 != null)
        {
            purchaseactivity.C.setText(o6.a());
        }
        o o7 = l1.a("com.aadhk.restpos.feature.payinout");
        if (o7 != null)
        {
            purchaseactivity.I.setText(o7.a());
        }
    }

    static void a(PurchaseActivity purchaseactivity, String s1)
    {
        purchaseactivity.a(s1);
    }

    private void a(String s1)
    {
        if (s1.equals("com.aadhk.restpos.report.sales"))
        {
            D.setVisibility(4);
            w.setVisibility(0);
            o.setOnClickListener(null);
        } else
        {
            if (s1.equals("com.aadhk.restpos.feature.receipt"))
            {
                E.setVisibility(4);
                x.setVisibility(0);
                p.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.kitchen"))
            {
                F.setVisibility(4);
                y.setVisibility(0);
                q.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.kitchen2"))
            {
                G.setVisibility(4);
                z.setVisibility(0);
                r.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.bar"))
            {
                H.setVisibility(4);
                A.setVisibility(0);
                s.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.price"))
            {
                C.setVisibility(4);
                v.setVisibility(0);
                t.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.payinout"))
            {
                I.setVisibility(4);
                B.setVisibility(0);
                u.setOnClickListener(null);
                return;
            }
        }
    }

    static boolean a(PurchaseActivity purchaseactivity)
    {
        purchaseactivity.n = true;
        return true;
    }

    static d b(PurchaseActivity purchaseactivity)
    {
        return purchaseactivity.m;
    }

    static void b(PurchaseActivity purchaseactivity, l l1)
    {
        SharedPreferences sharedpreferences;
        sharedpreferences = purchaseactivity.getPreferences(0);
        if (sharedpreferences.getBoolean("db_initialized", false))
        {
            break MISSING_BLOCK_LABEL_393;
        }
        m m1 = l1.b("com.aadhk.restpos.full");
        if (m1 == null) goto _L2; else goto _L1
_L1:
        if (m1.e() != 0) goto _L2; else goto _L3
_L3:
        com.aadhk.b.b.a(purchaseactivity, new m(m1.a(), "10002", "com.aadhk.restpos.report.sales", m1.d()));
        com.aadhk.b.b.a(purchaseactivity, new m(m1.a(), "10003", "com.aadhk.restpos.feature.receipt", m1.d()));
        com.aadhk.b.b.a(purchaseactivity, new m(m1.a(), "10005", "com.aadhk.restpos.feature.kitchen", m1.d()));
        com.aadhk.b.b.a(purchaseactivity, new m(m1.a(), "10004", "com.aadhk.restpos.feature.bar", m1.d()));
        com.aadhk.b.b.a(purchaseactivity, new m(m1.a(), "10006", "com.aadhk.restpos.feature.price", m1.d()));
_L5:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putBoolean("db_initialized", true);
        editor.commit();
        return;
_L2:
        m m2 = l1.b("com.aadhk.restpos.report.sales");
        if (m2 == null)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        if (m2.e() == 0)
        {
            com.aadhk.b.b.a(purchaseactivity, m2);
        }
        m m3 = l1.b("com.aadhk.restpos.feature.receipt");
        if (m3 == null)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        if (m3.e() == 0)
        {
            com.aadhk.b.b.a(purchaseactivity, m3);
        }
        m m4 = l1.b("com.aadhk.restpos.feature.kitchen");
        if (m4 == null)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        if (m4.e() == 0)
        {
            com.aadhk.b.b.a(purchaseactivity, m4);
        }
        m m5 = l1.b("com.aadhk.restpos.feature.kitchen2");
        if (m5 == null)
        {
            break MISSING_BLOCK_LABEL_300;
        }
        if (m5.e() == 0)
        {
            com.aadhk.b.b.a(purchaseactivity, m5);
        }
        m m6 = l1.b("com.aadhk.restpos.feature.bar");
        if (m6 == null)
        {
            break MISSING_BLOCK_LABEL_327;
        }
        if (m6.e() == 0)
        {
            com.aadhk.b.b.a(purchaseactivity, m6);
        }
        m m7 = l1.b("com.aadhk.restpos.feature.price");
        if (m7 == null)
        {
            break MISSING_BLOCK_LABEL_354;
        }
        if (m7.e() == 0)
        {
            com.aadhk.b.b.a(purchaseactivity, m7);
        }
        m m8 = l1.b("com.aadhk.restpos.feature.payinout");
        if (m8 == null) goto _L5; else goto _L4
_L4:
        if (m8.e() != 0) goto _L5; else goto _L6
_L6:
        com.aadhk.b.b.a(purchaseactivity, m8);
          goto _L5
        a a1;
        a1;
        BugSenseHandler.sendException(a1);
        a1.printStackTrace();
    }

    static void c(PurchaseActivity purchaseactivity)
    {
        purchaseactivity.a();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        (new StringBuilder("onActivityResult(")).append(i).append(",").append(j).append(",").append(intent);
        if (!m.a(i, j, intent))
        {
            super.onActivityResult(i, j, intent);
        }
    }

    public void onClick(View view)
    {
        if (n) goto _L2; else goto _L1
_L1:
        ax ax1 = new ax(this);
        ax1.a(0x7f090019);
        ax1.show();
_L4:
        return;
_L2:
        try
        {
            if (view == o)
            {
                m.a(this, "com.aadhk.restpos.report.sales", l, "");
                return;
            }
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        if (view == p)
        {
            m.a(this, "com.aadhk.restpos.feature.receipt", l, "");
            return;
        }
        if (view == q)
        {
            m.a(this, "com.aadhk.restpos.feature.kitchen", l, "");
            return;
        }
        if (view == r)
        {
            m.a(this, "com.aadhk.restpos.feature.kitchen2", l, "");
            return;
        }
        if (view == s)
        {
            m.a(this, "com.aadhk.restpos.feature.bar", l, "");
            return;
        }
        if (view == t)
        {
            m.a(this, "com.aadhk.restpos.feature.price", l, "");
            return;
        }
        if (view != u) goto _L4; else goto _L3
_L3:
        m.a(this, "com.aadhk.restpos.feature.payinout", l, "");
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f090017);
        setContentView(0x7f0300b1);
        o = (LinearLayout)findViewById(0x7f0b0257);
        o.setOnClickListener(this);
        p = (LinearLayout)findViewById(0x7f0b025a);
        p.setOnClickListener(this);
        q = (LinearLayout)findViewById(0x7f0b025d);
        q.setOnClickListener(this);
        r = (LinearLayout)findViewById(0x7f0b0260);
        r.setOnClickListener(this);
        s = (LinearLayout)findViewById(0x7f0b0263);
        s.setOnClickListener(this);
        t = (LinearLayout)findViewById(0x7f0b016b);
        t.setOnClickListener(this);
        u = (LinearLayout)findViewById(0x7f0b0268);
        u.setOnClickListener(this);
        v = (ImageView)findViewById(0x7f0b0267);
        w = (ImageView)findViewById(0x7f0b0259);
        x = (ImageView)findViewById(0x7f0b025c);
        y = (ImageView)findViewById(0x7f0b025f);
        z = (ImageView)findViewById(0x7f0b0262);
        A = (ImageView)findViewById(0x7f0b0265);
        B = (ImageView)findViewById(0x7f0b026a);
        C = (TextView)findViewById(0x7f0b0266);
        D = (TextView)findViewById(0x7f0b0258);
        E = (TextView)findViewById(0x7f0b025b);
        F = (TextView)findViewById(0x7f0b025e);
        G = (TextView)findViewById(0x7f0b0261);
        H = (TextView)findViewById(0x7f0b0264);
        I = (TextView)findViewById(0x7f0b0269);
        a();
        m = new d(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB");
        try
        {
            m.a(new bo(this));
            return;
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
    }

    protected void onDestroy()
    {
        if (m != null)
        {
            m.a();
            m = null;
        }
        super.onDestroy();
    }
}
