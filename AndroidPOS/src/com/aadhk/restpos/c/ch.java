// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            cl, ci, cj, ck

public final class ch extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private Button f;
    private Button g;
    private EditText h;
    private EditText i;
    private TextView j;
    private TextView k;
    private GridView l;
    private Company m;
    private Order n;
    private String o;
    private double p;
    private String q;
    private double r;
    private int s;
    private Context t;
    private List u;
    private LayoutInflater v;
    private double w;

    public ch(Context context, Order order, List list, boolean flag, boolean flag1)
    {
        super(context, 0x7f030069);
        setTitle(0x7f0800ef);
        m = ((POSApp)context.getApplicationContext()).b();
        o = m.getCurrencySign();
        s = m.getDecimalPlace();
        n = order;
        t = context;
        u = list;
        v = LayoutInflater.from(context);
        w = order.getSubTotal();
        if (!flag) goto _L2; else goto _L1
_L1:
        w = (w + order.getTax1Amt() + order.getTax2Amt() + order.getTax3Amt()) - order.getDiscountAmt();
_L4:
        j = (TextView)findViewById(0x7f09010f);
        h = (EditText)findViewById(0x7f090168);
        i = (EditText)findViewById(0x7f090169);
        k = (TextView)findViewById(0x7f0900df);
        k.setText(o);
        l = (GridView)findViewById(0x7f09016a);
        l.setOnItemClickListener(this);
        l.setAdapter(new cl(this, (byte)0));
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnFocusChangeListener(new ci(this));
        i.setOnFocusChangeListener(new cj(this));
        h.setOnFocusChangeListener(new ck(this));
        r = n.getServiceAmt();
        p = com.aadhk.restpos.util.m.b(r, w);
        q = com.aadhk.product.library.c.h.d(p);
        h.setText(q);
        i.setText(com.aadhk.product.library.c.h.b(r));
        j.setText(com.aadhk.restpos.util.p.b(s, w, o));
        return;
_L2:
        if (!flag1)
        {
            w = w - order.getDiscountAmt();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static double a(ch ch1, double d1)
    {
        ch1.r = d1;
        return d1;
    }

    static EditText a(ch ch1)
    {
        return ch1.i;
    }

    static String a(ch ch1, String s1)
    {
        ch1.q = s1;
        return s1;
    }

    static double b(ch ch1)
    {
        return ch1.r;
    }

    static double b(ch ch1, double d1)
    {
        ch1.p = d1;
        return d1;
    }

    static double c(ch ch1)
    {
        return ch1.w;
    }

    static double d(ch ch1)
    {
        return ch1.p;
    }

    static String e(ch ch1)
    {
        return ch1.q;
    }

    static EditText f(ch ch1)
    {
        return ch1.h;
    }

    static int g(ch ch1)
    {
        return ch1.s;
    }

    static List h(ch ch1)
    {
        return ch1.u;
    }

    static LayoutInflater i(ch ch1)
    {
        return ch1.v;
    }

    static Context j(ch ch1)
    {
        return ch1.t;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 2: default 32
    //                   2131296347: 33
    //                   2131296475: 38;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        dismiss();
        return;
_L3:
        h.clearFocus();
        i.clearFocus();
        if (p > 100D)
        {
            h.setError(c.getString(0x7f080318));
        } else
        if (r > w)
        {
            i.setError(c.getString(0x7f080318));
            flag = false;
        } else
        {
            String s1 = i.getText().toString();
            if (!TextUtils.isEmpty(s1))
            {
                r = com.aadhk.product.library.c.h.d(s1);
            } else
            {
                r = 0.0D;
            }
            flag = true;
        }
        if (flag)
        {
            if (a != null)
            {
                a.a(Double.valueOf(r));
            }
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        ServiceFee servicefee = (ServiceFee)u.get(i1);
        if (servicefee.isPercentage())
        {
            r = com.aadhk.restpos.util.m.a(w, servicefee.getAmount(), s);
            p = servicefee.getAmount();
            q = com.aadhk.product.library.c.h.d(p);
        } else
        {
            r = servicefee.getAmount();
            p = com.aadhk.restpos.util.m.b(r, w);
            q = com.aadhk.product.library.c.h.d(p);
        }
        h.setText(q);
        i.setText(com.aadhk.product.library.c.h.b(r));
    }
}
