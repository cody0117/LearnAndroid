// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.CloseOutCashRegister;
import com.aadhk.restpos.c.a;
import com.aadhk.restpos.c.dr;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, cb, by, ca, 
//            bw, bx, bz

public class PayCloseOutActivity extends POSActivity
    implements android.view.View.OnClickListener
{

    private EditText A;
    private ImageView B;
    private ImageView C;
    private ImageView D;
    private Button E;
    private CloseOutCashRegister F;
    private String G;
    private String H;
    private double I;
    private double J;
    private double K;
    private double L;
    private String M[];
    private com.aadhk.restpos.g.p N;
    private TextView a;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private EditText w;
    private EditText x;
    private EditText y;
    private EditText z;

    public PayCloseOutActivity()
    {
    }

    static double a(PayCloseOutActivity paycloseoutactivity, double d1)
    {
        paycloseoutactivity.I = d1;
        return d1;
    }

    static CloseOutCashRegister a(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.F;
    }

    static String a(PayCloseOutActivity paycloseoutactivity, String s1)
    {
        paycloseoutactivity.H = s1;
        return s1;
    }

    private void a()
    {
        (new d(new cb(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    private void a(int i1)
    {
        a a1 = new a(this, j, i);
        a1.setTitle(0x7f08010b);
        a1.a(new by(this, i1));
        a1.show();
    }

    static String[] a(PayCloseOutActivity paycloseoutactivity, String as[])
    {
        paycloseoutactivity.M = as;
        return as;
    }

    static double b(PayCloseOutActivity paycloseoutactivity, double d1)
    {
        paycloseoutactivity.J = d1;
        return d1;
    }

    static String b(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.H;
    }

    static String b(PayCloseOutActivity paycloseoutactivity, String s1)
    {
        paycloseoutactivity.G = s1;
        return s1;
    }

    private void b()
    {
        F.setDate(F.getDate());
        F.setTime(x.getText().toString());
        F.setLastTime(G);
        double d1 = com.aadhk.product.library.c.h.d(y.getText().toString());
        double d2 = com.aadhk.product.library.c.h.d(A.getText().toString());
        F.setStartAmount(d1);
        F.setNextAmount(d2);
        (new d(new ca(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static double c(PayCloseOutActivity paycloseoutactivity, double d1)
    {
        paycloseoutactivity.K = d1;
        return d1;
    }

    static com.aadhk.restpos.g.p c(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.N;
    }

    static double d(PayCloseOutActivity paycloseoutactivity, double d1)
    {
        paycloseoutactivity.L = d1;
        return d1;
    }

    static String d(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.G;
    }

    static String[] e(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.M;
    }

    static TextView f(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.a;
    }

    static EditText g(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.w;
    }

    static EditText h(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.x;
    }

    static double i(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.I;
    }

    static EditText j(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.y;
    }

    static double k(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.J;
    }

    static TextView l(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.o;
    }

    static double m(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.K;
    }

    static TextView n(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.p;
    }

    static double o(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.L;
    }

    static TextView p(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.q;
    }

    static TextView q(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.s;
    }

    static TextView r(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.t;
    }

    static TextView s(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.u;
    }

    static TextView t(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.v;
    }

    static void u(PayCloseOutActivity paycloseoutactivity)
    {
        double d1 = com.aadhk.restpos.util.m.a(com.aadhk.product.library.c.h.d(paycloseoutactivity.y.getText().toString()), paycloseoutactivity.J, paycloseoutactivity.K, paycloseoutactivity.L, paycloseoutactivity.j);
        paycloseoutactivity.r.setText(com.aadhk.restpos.util.p.a(paycloseoutactivity.j, d1, paycloseoutactivity.i));
        paycloseoutactivity.z.setText(com.aadhk.product.library.c.h.b(d1));
    }

    static void v(PayCloseOutActivity paycloseoutactivity)
    {
        double d1 = com.aadhk.restpos.util.m.c(com.aadhk.product.library.c.h.d(paycloseoutactivity.z.getText().toString()), com.aadhk.product.library.c.h.d(paycloseoutactivity.A.getText().toString()), paycloseoutactivity.j);
        paycloseoutactivity.s.setText(com.aadhk.restpos.util.p.a(paycloseoutactivity.j, d1, paycloseoutactivity.i));
    }

    static void w(PayCloseOutActivity paycloseoutactivity)
    {
        paycloseoutactivity.a();
    }

    static EditText x(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.z;
    }

    static EditText y(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.A;
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131296362: 
            g g1 = new g(this, F.getDate());
            g1.a(new bw(this));
            g1.show();
            return;

        case 2131296363: 
            dr dr1 = new dr(this, F.getTime());
            dr1.a(new bx(this));
            dr1.show();
            return;

        case 2131296366: 
            a(1);
            return;

        case 2131296373: 
            a(2);
            return;

        case 2131296376: 
            a(3);
            return;

        case 2131296378: 
            H = (new StringBuilder()).append(F.getDate()).append(" ").append(F.getTime()).toString();
            break;
        }
        if (G == null)
        {
            b();
            return;
        }
        if (!G.equals(H))
        {
            if (H.compareTo(G) > 0)
            {
                b();
                return;
            } else
            {
                Toast.makeText(this, 0x7f080107, 1).show();
                return;
            }
        } else
        {
            Toast.makeText(this, 0x7f080108, 1).show();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030026);
        setTitle(0x7f080100);
        N = new com.aadhk.restpos.g.p(this);
        F = new CloseOutCashRegister();
        F.setDate(com.aadhk.restpos.util.o.e());
        F.setTime(com.aadhk.restpos.util.o.f());
        a = (TextView)findViewById(0x7f090069);
        o = (TextView)findViewById(0x7f09006f);
        p = (TextView)findViewById(0x7f090070);
        q = (TextView)findViewById(0x7f090071);
        r = (TextView)findViewById(0x7f090072);
        s = (TextView)findViewById(0x7f090079);
        t = (TextView)findViewById(0x7f09006c);
        u = (TextView)findViewById(0x7f090073);
        v = (TextView)findViewById(0x7f090076);
        w = (EditText)findViewById(0x7f09006a);
        x = (EditText)findViewById(0x7f09006b);
        y = (EditText)findViewById(0x7f09006d);
        z = (EditText)findViewById(0x7f090074);
        A = (EditText)findViewById(0x7f090077);
        E = (Button)findViewById(0x7f09007a);
        B = (ImageView)findViewById(0x7f09006e);
        C = (ImageView)findViewById(0x7f090075);
        D = (ImageView)findViewById(0x7f090078);
        w.setOnClickListener(this);
        x.setOnClickListener(this);
        y.addTextChangedListener(new bz(this, y));
        z.addTextChangedListener(new bz(this, z));
        A.addTextChangedListener(new bz(this, A));
        B.setOnClickListener(this);
        C.setOnClickListener(this);
        D.setOnClickListener(this);
        E.setOnClickListener(this);
    }

    public void onDestroy()
    {
        com.aadhk.restpos.g.p _tmp = N;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        a();
    }
}
