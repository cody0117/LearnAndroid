// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.restpos.bean.Currency;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, n, l, m

public final class k extends cs
    implements android.view.View.OnClickListener
{

    private m e;
    private l f;
    private n g;
    private Button h;
    private Button i;
    private Button j;
    private EditText k;
    private EditText l;
    private EditText m;
    private final int n;
    private Currency o;

    public k(Context context, Currency currency, int i1)
    {
        super(context, 0x7f030036);
        n = i1;
        o = currency;
        h = (Button)findViewById(0x7f09005a);
        h.setOnClickListener(this);
        i = (Button)findViewById(0x7f0900dc);
        i.setOnClickListener(this);
        j = (Button)findViewById(0x7f09005b);
        j.setOnClickListener(this);
        k = (EditText)findViewById(0x7f0900ce);
        l = (EditText)findViewById(0x7f0900d0);
        m = (EditText)findViewById(0x7f0900d1);
        if (2 == n)
        {
            i.setVisibility(0);
        }
        if (o != null)
        {
            k.setText(o.getCode());
            l.setText(o.getSign());
            m.setText(o.getDesc());
            return;
        } else
        {
            o = new Currency();
            return;
        }
    }

    private boolean a()
    {
        if (TextUtils.isEmpty(o.getCode()))
        {
            k.setError(a.getString(0x7f080085));
            return false;
        }
        if (TextUtils.isEmpty(o.getSign()))
        {
            l.setError(a.getString(0x7f080085));
            return false;
        }
        if (TextUtils.isEmpty(o.getDesc()))
        {
            m.setError(a.getString(0x7f080085));
            return false;
        } else
        {
            return true;
        }
    }

    public final void a(l l1)
    {
        f = l1;
    }

    public final void a(m m1)
    {
        e = m1;
    }

    public final void a(n n1)
    {
        g = n1;
    }

    public final void onClick(View view)
    {
        if (view != h) goto _L2; else goto _L1
_L1:
        o.setCode(k.getText().toString());
        o.setSign(l.getText().toString());
        o.setDesc(m.getText().toString());
        if (2 != n) goto _L4; else goto _L3
_L3:
        if (a())
        {
            if (g != null)
            {
                g.a(o);
            }
            dismiss();
        }
_L6:
        return;
_L4:
        if (a())
        {
            if (f != null)
            {
                f.a(o);
            }
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == i)
        {
            if (e != null)
            {
                e.a();
            }
            dismiss();
            return;
        }
        if (view == j)
        {
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
