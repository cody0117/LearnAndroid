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
import com.aadhk.restpos.c.bo;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, cv, cw, cu

public class PurchaseActivity extends POSActivity
    implements android.view.View.OnClickListener
{

    private ImageView A;
    private ImageView B;
    private ImageView C;
    private ImageView D;
    private ImageView E;
    private TextView F;
    private TextView G;
    private TextView H;
    private TextView I;
    private TextView J;
    private TextView K;
    private TextView L;
    j a;
    h o;
    private d p;
    private boolean q;
    private LinearLayout r;
    private LinearLayout s;
    private LinearLayout t;
    private LinearLayout u;
    private LinearLayout v;
    private LinearLayout w;
    private LinearLayout x;
    private ImageView y;
    private ImageView z;

    public PurchaseActivity()
    {
        a = new cv(this);
        o = new cw(this);
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
            purchaseactivity.G.setText(o1.a());
        }
        o o2 = l1.a("com.aadhk.restpos.feature.receipt");
        if (o2 != null)
        {
            purchaseactivity.H.setText(o2.a());
        }
        o o3 = l1.a("com.aadhk.restpos.feature.kitchen");
        if (o3 != null)
        {
            purchaseactivity.I.setText(o3.a());
        }
        o o4 = l1.a("com.aadhk.restpos.feature.kitchen2");
        if (o4 != null)
        {
            purchaseactivity.J.setText(o4.a());
        }
        o o5 = l1.a("com.aadhk.restpos.feature.bar");
        if (o5 != null)
        {
            purchaseactivity.K.setText(o5.a());
        }
        o o6 = l1.a("com.aadhk.restpos.feature.price");
        if (o6 != null)
        {
            purchaseactivity.F.setText(o6.a());
        }
        o o7 = l1.a("com.aadhk.restpos.feature.payinout");
        if (o7 != null)
        {
            purchaseactivity.L.setText(o7.a());
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
            G.setVisibility(4);
            z.setVisibility(0);
            r.setOnClickListener(null);
        } else
        {
            if (s1.equals("com.aadhk.restpos.feature.receipt"))
            {
                H.setVisibility(4);
                A.setVisibility(0);
                s.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.kitchen"))
            {
                I.setVisibility(4);
                B.setVisibility(0);
                t.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.kitchen2"))
            {
                J.setVisibility(4);
                C.setVisibility(0);
                u.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.bar"))
            {
                K.setVisibility(4);
                D.setVisibility(0);
                v.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.price"))
            {
                F.setVisibility(4);
                y.setVisibility(0);
                w.setOnClickListener(null);
                return;
            }
            if (s1.equals("com.aadhk.restpos.feature.payinout"))
            {
                L.setVisibility(4);
                E.setVisibility(0);
                x.setOnClickListener(null);
                return;
            }
        }
    }

    static boolean a(PurchaseActivity purchaseactivity)
    {
        purchaseactivity.q = true;
        return true;
    }

    static d b(PurchaseActivity purchaseactivity)
    {
        return purchaseactivity.p;
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
        if (!p.a(i, j, intent))
        {
            super.onActivityResult(i, j, intent);
        }
    }

    public void onClick(View view)
    {
        if (q) goto _L2; else goto _L1
_L1:
        bo bo1 = new bo(this);
        bo1.a(0x7f080046);
        bo1.show();
_L4:
        return;
_L2:
        try
        {
            if (view == r)
            {
                p.a(this, "com.aadhk.restpos.report.sales", o, "");
                return;
            }
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        if (view == s)
        {
            p.a(this, "com.aadhk.restpos.feature.receipt", o, "");
            return;
        }
        if (view == t)
        {
            p.a(this, "com.aadhk.restpos.feature.kitchen", o, "");
            return;
        }
        if (view == u)
        {
            p.a(this, "com.aadhk.restpos.feature.kitchen2", o, "");
            return;
        }
        if (view == v)
        {
            p.a(this, "com.aadhk.restpos.feature.bar", o, "");
            return;
        }
        if (view == w)
        {
            p.a(this, "com.aadhk.restpos.feature.price", o, "");
            return;
        }
        if (view != x) goto _L4; else goto _L3
_L3:
        p.a(this, "com.aadhk.restpos.feature.payinout", o, "");
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f080044);
        setContentView(0x7f0300d0);
        r = (LinearLayout)findViewById(0x7f0902c9);
        r.setOnClickListener(this);
        s = (LinearLayout)findViewById(0x7f0902cc);
        s.setOnClickListener(this);
        t = (LinearLayout)findViewById(0x7f0902cf);
        t.setOnClickListener(this);
        u = (LinearLayout)findViewById(0x7f0902d2);
        u.setOnClickListener(this);
        v = (LinearLayout)findViewById(0x7f0902d5);
        v.setOnClickListener(this);
        w = (LinearLayout)findViewById(0x7f0901ba);
        w.setOnClickListener(this);
        x = (LinearLayout)findViewById(0x7f0902da);
        x.setOnClickListener(this);
        y = (ImageView)findViewById(0x7f0902d9);
        z = (ImageView)findViewById(0x7f0902cb);
        A = (ImageView)findViewById(0x7f0902ce);
        B = (ImageView)findViewById(0x7f0902d1);
        C = (ImageView)findViewById(0x7f0902d4);
        D = (ImageView)findViewById(0x7f0902d7);
        E = (ImageView)findViewById(0x7f0902dc);
        F = (TextView)findViewById(0x7f0902d8);
        G = (TextView)findViewById(0x7f0902ca);
        H = (TextView)findViewById(0x7f0902cd);
        I = (TextView)findViewById(0x7f0902d0);
        J = (TextView)findViewById(0x7f0902d3);
        K = (TextView)findViewById(0x7f0902d6);
        L = (TextView)findViewById(0x7f0902db);
        a();
        p = new d(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB");
        try
        {
            p.a(new cu(this));
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
        if (p != null)
        {
            p.a();
            p = null;
        }
        super.onDestroy();
    }
}
