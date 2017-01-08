// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.c.cg;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bd, bb, bc, 
//            be

public class PayCloseOutActivity extends POSActivity
    implements android.view.View.OnClickListener
{

    private ImageView A;
    private ImageView B;
    private Button C;
    private CashRegister D;
    private String E;
    private String F;
    private double G;
    private double H;
    private double I;
    private double J;
    private String K[];
    private a a;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private EditText u;
    private EditText v;
    private EditText w;
    private EditText x;
    private EditText y;
    private ImageView z;

    public PayCloseOutActivity()
    {
    }

    private void a()
    {
        E = a.a(null);
        if (!TextUtils.isEmpty(E))
        {
            K = E.split(" ");
        }
        F = (new StringBuilder()).append(D.getDate()).append(" ").append(D.getTime()).toString();
        if (E != null)
        {
            l.setText((new StringBuilder()).append(i.d(K[0], k)).append(" ").append(K[1]).toString());
        } else
        {
            l.setText(0x7f0900e0);
        }
        u.setText(i.d(D.getDate(), k));
        v.setText(D.getTime());
        G = a.a(0, null);
        H = a.a(E, F, 1);
        I = a.a(E, F, 2);
        J = a.b(E, F);
        w.setText(h.b(G));
        m.setText(j.a(j, H, i));
        n.setText(j.a(j, I, i));
        o.setText(j.a(j, J, i));
        q.setText(j.a(j, 0.0D, i));
        r.setText(i);
        s.setText(i);
        t.setText(i);
        b();
        c();
    }

    private void a(int k)
    {
        com.aadhk.restpos.c.a a1 = new com.aadhk.restpos.c.a(this, j, i);
        a1.setTitle(0x7f0900dc);
        a1.a(new bd(this, k));
        a1.show();
    }

    static void a(PayCloseOutActivity paycloseoutactivity)
    {
        paycloseoutactivity.b();
    }

    private void b()
    {
        double d1 = com.aadhk.restpos.f.h.a(h.d(w.getText().toString()), H, I, J, j);
        p.setText(j.a(j, d1, i));
        x.setText(h.b(d1));
    }

    static void b(PayCloseOutActivity paycloseoutactivity)
    {
        paycloseoutactivity.c();
    }

    static CashRegister c(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.D;
    }

    private void c()
    {
        double d1 = com.aadhk.restpos.f.h.c(h.d(x.getText().toString()), h.d(y.getText().toString()), j);
        q.setText(j.a(j, d1, i));
    }

    private void d()
    {
        D.setDate(D.getDate());
        D.setTime(v.getText().toString());
        double d1 = h.d(w.getText().toString());
        double d2 = h.d(y.getText().toString());
        if (E != null)
        {
            a.a(E, d1);
        } else
        {
            D.setAmount(d1);
            D.setTranxType(-1);
            a.a(D);
        }
        D.setAmount(d2);
        D.setTranxType(0);
        a.a(D);
        finish();
    }

    static void d(PayCloseOutActivity paycloseoutactivity)
    {
        paycloseoutactivity.a();
    }

    static EditText e(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.w;
    }

    static EditText f(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.x;
    }

    static EditText g(PayCloseOutActivity paycloseoutactivity)
    {
        return paycloseoutactivity.y;
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131427422: 
            com.aadhk.restpos.c.j j1 = new com.aadhk.restpos.c.j(this, D.getDate());
            j1.a(new bb(this));
            j1.show();
            return;

        case 2131427423: 
            cg cg1 = new cg(this, D.getTime());
            cg1.a(new bc(this));
            cg1.show();
            return;

        case 2131427426: 
            a(1);
            return;

        case 2131427433: 
            a(2);
            return;

        case 2131427436: 
            a(3);
            return;

        case 2131427438: 
            F = (new StringBuilder()).append(D.getDate()).append(" ").append(D.getTime()).toString();
            break;
        }
        if (E == null)
        {
            d();
            return;
        }
        if (!E.equals(F))
        {
            if (F.compareTo(E) > 0)
            {
                d();
                return;
            } else
            {
                Toast.makeText(this, 0x7f0900d8, 1).show();
                return;
            }
        } else
        {
            Toast.makeText(this, 0x7f0900d9, 1).show();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030022);
        setTitle(0x7f0900d1);
        a = new a(com.aadhk.restpos.b.f.a().b());
        D = new CashRegister();
        D.setDate(i.e());
        D.setTime(i.f());
        l = (TextView)findViewById(0x7f0b005d);
        m = (TextView)findViewById(0x7f0b0063);
        n = (TextView)findViewById(0x7f0b0064);
        o = (TextView)findViewById(0x7f0b0065);
        p = (TextView)findViewById(0x7f0b0066);
        q = (TextView)findViewById(0x7f0b006d);
        r = (TextView)findViewById(0x7f0b0060);
        s = (TextView)findViewById(0x7f0b0067);
        t = (TextView)findViewById(0x7f0b006a);
        u = (EditText)findViewById(0x7f0b005e);
        v = (EditText)findViewById(0x7f0b005f);
        w = (EditText)findViewById(0x7f0b0061);
        x = (EditText)findViewById(0x7f0b0068);
        y = (EditText)findViewById(0x7f0b006b);
        C = (Button)findViewById(0x7f0b006e);
        z = (ImageView)findViewById(0x7f0b0062);
        A = (ImageView)findViewById(0x7f0b0069);
        B = (ImageView)findViewById(0x7f0b006c);
        u.setOnClickListener(this);
        v.setOnClickListener(this);
        w.addTextChangedListener(new be(this, w));
        x.addTextChangedListener(new be(this, x));
        y.addTextChangedListener(new be(this, y));
        z.setOnClickListener(this);
        A.setOnClickListener(this);
        B.setOnClickListener(this);
        C.setOnClickListener(this);
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        a();
    }
}
