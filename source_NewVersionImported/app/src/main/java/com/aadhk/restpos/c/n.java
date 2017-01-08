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
import com.aadhk.product.library.bean.Currency;

// Referenced classes of package com.aadhk.restpos.c:
//            br, q, o, p

public final class n extends br
    implements android.view.View.OnClickListener
{

    private p e;
    private o f;
    private q g;
    private Button h;
    private Button i;
    private Button j;
    private EditText k;
    private EditText l;
    private EditText m;
    private final int n;
    private Currency o;

    public n(Context context, Currency currency, int i1)
    {
        super(context, 0x7f03002e);
        n = i1;
        o = currency;
        h = (Button)findViewById(0x7f0b0056);
        h.setOnClickListener(this);
        i = (Button)findViewById(0x7f0b00c9);
        i.setOnClickListener(this);
        j = (Button)findViewById(0x7f0b0057);
        j.setOnClickListener(this);
        k = (EditText)findViewById(0x7f0b00b4);
        k.setOnClickListener(this);
        l = (EditText)findViewById(0x7f0b00b5);
        l.setOnClickListener(this);
        m = (EditText)findViewById(0x7f0b00b6);
        m.setOnClickListener(this);
        k.setSelectAllOnFocus(true);
        l.setSelectAllOnFocus(true);
        m.setSelectAllOnFocus(true);
        if (2 == n)
        {
            i.setVisibility(0);
        }
        if (o != null)
        {
            k.setText(o.a());
            l.setText(o.b());
            m.setText(o.c());
            return;
        } else
        {
            o = new Currency();
            return;
        }
    }

    private boolean a()
    {
        if (TextUtils.isEmpty(o.a()))
        {
            k.setError(a.getString(0x7f090055));
            return false;
        }
        if (TextUtils.isEmpty(o.b()))
        {
            l.setError(a.getString(0x7f090055));
            return false;
        }
        if (TextUtils.isEmpty(o.c()))
        {
            m.setError(a.getString(0x7f090055));
            return false;
        } else
        {
            return true;
        }
    }

    public final void a(o o1)
    {
        f = o1;
    }

    public final void a(p p1)
    {
        e = p1;
    }

    public final void a(q q1)
    {
        g = q1;
    }

    public final void onClick(View view)
    {
        if (view != h) goto _L2; else goto _L1
_L1:
        o.a(k.getText().toString());
        o.b(l.getText().toString());
        o.c(m.getText().toString());
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
        if (view == k)
        {
            k.selectAll();
            return;
        }
        if (view == l)
        {
            l.selectAll();
            return;
        }
        if (view == m)
        {
            m.selectAll();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
