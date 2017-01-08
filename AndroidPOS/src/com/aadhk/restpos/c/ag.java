// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.ServiceFeeActivity;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.util.p;

public final class ag extends e
    implements android.view.View.OnClickListener
{

    private ServiceFeeActivity f;
    private Button g;
    private Button h;
    private Button i;
    private TextView j;
    private ToggleButton k;
    private EditText l;
    private EditText m;
    private ServiceFee n;

    public ag(ServiceFeeActivity servicefeeactivity, ServiceFee servicefee)
    {
        super(servicefeeactivity, 0x7f030044);
        f = servicefeeactivity;
        g = (Button)findViewById(0x7f09005a);
        h = (Button)findViewById(0x7f09005b);
        j = (TextView)findViewById(0x7f0900df);
        k = (ToggleButton)findViewById(0x7f0900de);
        l = (EditText)findViewById(0x7f0900fb);
        m = (EditText)findViewById(0x7f0900e0);
        k.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        if (servicefee == null)
        {
            n = new ServiceFee();
            n.setPercentage(true);
        } else
        {
            n = servicefee;
        }
        l.setText(n.getName());
        if (n.isPercentage())
        {
            j.setText(0x7f0801e1);
        } else
        {
            j.setText(servicefeeactivity.s());
        }
        m.setText(p.b(n.getAmount()));
        k.setChecked(n.isPercentage());
        if (n.isPercentage())
        {
            m.setHint(0x7f08035f);
            return;
        } else
        {
            m.setHint(0x7f080360);
            return;
        }
    }

    public final void b()
    {
        i = (Button)findViewById(0x7f0900dc);
        i.setOnClickListener(this);
        i.setVisibility(0);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != k) goto _L2; else goto _L1
_L1:
        boolean flag1 = k.isChecked();
        if (flag1)
        {
            j.setText(0x7f0801e1);
            m.setHint(0x7f08035f);
        } else
        {
            j.setText(f.s());
            m.setHint(0x7f080360);
        }
        n.setPercentage(flag1);
_L9:
        return;
_L2:
        if (view != g) goto _L4; else goto _L3
_L3:
        double d = p.d(m.getText().toString());
        if (!"".equals(l.getText().toString())) goto _L6; else goto _L5
_L5:
        l.setError(c.getString(0x7f080085));
_L7:
        if (flag && a != null)
        {
            n.setName(l.getText().toString());
            n.setAmount(p.d(m.getText().toString()));
            a.a(n);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (n.isPercentage())
        {
            if (d <= 0.0D || d > 100D)
            {
                m.setError(c.getString(0x7f0802eb));
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if (!n.isPercentage() && d <= 0.0D)
        {
            m.setError(c.getString(0x7f0802ec));
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
        if (true) goto _L7; else goto _L4
_L4:
        if (view == h)
        {
            dismiss();
            return;
        }
        if (view == i && b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }
}
