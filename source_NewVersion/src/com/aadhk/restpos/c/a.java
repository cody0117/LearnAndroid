// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.f.j;

// Referenced classes of package com.aadhk.restpos.c:
//            b

public final class a extends e
    implements android.view.View.OnClickListener
{

    private EditText A;
    private EditText B;
    private EditText C;
    private EditText D;
    private EditText E;
    private EditText F;
    private EditText G;
    private EditText H;
    private EditText I;
    private EditText J;
    private EditText K;
    private EditText L;
    private EditText M;
    private EditText N;
    private EditText O;
    private double P;
    private int Q;
    private String R;
    private Button f;
    private Button g;
    private Button h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    public a(Context context, int i1, String s1)
    {
        super(context, 0x7f03002a);
        P = 0.0D;
        Q = i1;
        R = s1;
        f = (Button)findViewById(0x7f0b0056);
        g = (Button)findViewById(0x7f0b0057);
        i = (TextView)findViewById(0x7f0b0088);
        j = (TextView)findViewById(0x7f0b0089);
        k = (TextView)findViewById(0x7f0b008a);
        j.setText((new StringBuilder()).append(context.getString(0x7f0900dd)).append("(").append(s1).append(")").toString());
        k.setText((new StringBuilder()).append(context.getString(0x7f0900de)).append("(").append(s1).append(")").toString());
        l = (TextView)findViewById(0x7f0b008c);
        m = (TextView)findViewById(0x7f0b008e);
        n = (TextView)findViewById(0x7f0b0090);
        o = (TextView)findViewById(0x7f0b0092);
        p = (TextView)findViewById(0x7f0b0094);
        q = (TextView)findViewById(0x7f0b0096);
        r = (TextView)findViewById(0x7f0b0098);
        s = (TextView)findViewById(0x7f0b009a);
        t = (TextView)findViewById(0x7f0b009c);
        u = (TextView)findViewById(0x7f0b009e);
        v = (TextView)findViewById(0x7f0b00a0);
        w = (TextView)findViewById(0x7f0b00a2);
        x = (TextView)findViewById(0x7f0b00a4);
        y = (TextView)findViewById(0x7f0b00a6);
        z = (TextView)findViewById(0x7f0b00a8);
        A = (EditText)findViewById(0x7f0b008b);
        B = (EditText)findViewById(0x7f0b008d);
        C = (EditText)findViewById(0x7f0b008f);
        D = (EditText)findViewById(0x7f0b0091);
        E = (EditText)findViewById(0x7f0b0093);
        F = (EditText)findViewById(0x7f0b0095);
        G = (EditText)findViewById(0x7f0b0097);
        H = (EditText)findViewById(0x7f0b0099);
        I = (EditText)findViewById(0x7f0b009b);
        J = (EditText)findViewById(0x7f0b009d);
        K = (EditText)findViewById(0x7f0b009f);
        L = (EditText)findViewById(0x7f0b00a1);
        M = (EditText)findViewById(0x7f0b00a3);
        N = (EditText)findViewById(0x7f0b00a5);
        O = (EditText)findViewById(0x7f0b00a7);
        A.addTextChangedListener(new b(this, A, l));
        B.addTextChangedListener(new b(this, B, m));
        C.addTextChangedListener(new b(this, C, n));
        D.addTextChangedListener(new b(this, D, o));
        E.addTextChangedListener(new b(this, E, p));
        F.addTextChangedListener(new b(this, F, q));
        G.addTextChangedListener(new b(this, G, r));
        H.addTextChangedListener(new b(this, H, s));
        I.addTextChangedListener(new b(this, I, t));
        J.addTextChangedListener(new b(this, J, u));
        K.addTextChangedListener(new b(this, K, v));
        L.addTextChangedListener(new b(this, L, w));
        M.addTextChangedListener(new b(this, M, x));
        N.addTextChangedListener(new b(this, N, y));
        O.addTextChangedListener(new b(this, O, z));
        f.setOnClickListener(this);
        g.setOnClickListener(this);
    }

    static void a(a a1)
    {
        double d = 1.0D * com.aadhk.product.library.c.h.d(a1.A.getText().toString());
        double d1 = 2D * com.aadhk.product.library.c.h.d(a1.B.getText().toString());
        double d2 = 5D * com.aadhk.product.library.c.h.d(a1.C.getText().toString());
        double d3 = 10D * com.aadhk.product.library.c.h.d(a1.D.getText().toString());
        double d4 = 20D * com.aadhk.product.library.c.h.d(a1.E.getText().toString());
        double d5 = 50D * com.aadhk.product.library.c.h.d(a1.F.getText().toString());
        double d6 = 100D * com.aadhk.product.library.c.h.d(a1.G.getText().toString());
        double d7 = 0.10000000000000001D * com.aadhk.product.library.c.h.d(a1.H.getText().toString());
        double d8 = 0.20000000000000001D * com.aadhk.product.library.c.h.d(a1.I.getText().toString());
        double d9 = 0.25D * com.aadhk.product.library.c.h.d(a1.J.getText().toString());
        double d10 = 0.5D * com.aadhk.product.library.c.h.d(a1.K.getText().toString());
        double d11 = 0.01D * com.aadhk.product.library.c.h.d(a1.L.getText().toString());
        double d12 = 0.02D * com.aadhk.product.library.c.h.d(a1.M.getText().toString());
        double d13 = 0.025000000000000001D * com.aadhk.product.library.c.h.d(a1.N.getText().toString());
        a1.P = 0.050000000000000003D * com.aadhk.product.library.c.h.d(a1.O.getText().toString()) + (d13 + (d12 + (d11 + (d10 + (d9 + (d8 + (d7 + (d6 + (d5 + (d4 + (d3 + (d2 + (d + d1)))))))))))));
        a1.i.setText(com.aadhk.restpos.f.j.a(a1.Q, a1.P, a1.R));
    }

    public final void onClick(View view)
    {
        if (view == f)
        {
            if (a != null)
            {
                a.a(Double.valueOf(P));
                dismiss();
            }
        } else
        {
            if (view == g)
            {
                dismiss();
                return;
            }
            if (view == h && b != null)
            {
                b.a();
                dismiss();
                return;
            }
        }
    }
}
