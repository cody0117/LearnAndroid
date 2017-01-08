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
import android.widget.ImageButton;
import android.widget.TextView;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.util.w;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, r

public final class q extends cs
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private ImageButton g;
    private ImageButton h;
    private ImageButton i;
    private ImageButton j;
    private r k;
    private EditText l;
    private EditText m;
    private Item n;
    private int o;

    public q(Context context, Item item, int i1)
    {
        super(context, 0x7f03004f);
        n = item;
        o = i1;
        ((TextView)findViewById(0x7f0900a3)).setText(item.getName());
        e = (Button)findViewById(0x7f0900db);
        f = (Button)findViewById(0x7f09005b);
        l = (EditText)findViewById(0x7f0900fa);
        m = (EditText)findViewById(0x7f0900f3);
        g = (ImageButton)findViewById(0x7f0900f4);
        h = (ImageButton)findViewById(0x7f0900f5);
        i = (ImageButton)findViewById(0x7f09011d);
        j = (ImageButton)findViewById(0x7f09011e);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        l.setText("1");
        m.setText((new StringBuilder()).append(item.getPrice()).toString());
    }

    public final void a(r r1)
    {
        k = r1;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != g) goto _L2; else goto _L1
_L1:
        w.a(l);
_L4:
        return;
_L2:
        if (view == h)
        {
            w.b(l);
            l.setError(null);
            return;
        }
        if (view == i)
        {
            w.a(m);
            return;
        }
        if (view == j)
        {
            w.b(m);
            return;
        }
        if (view != e)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s = l.getText().toString();
        String s1 = m.getText().toString();
        if (TextUtils.isEmpty(s))
        {
            l.setError(a.getString(0x7f080085));
        } else
        if (TextUtils.isEmpty(s1))
        {
            m.setError(a.getString(0x7f080088));
            flag = false;
        } else
        if (n.isStopSaleZeroQty() && Integer.parseInt(s) > o)
        {
            EditText edittext = l;
            String s2 = a.getString(0x7f080299);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(o);
            edittext.setError(String.format(s2, aobj));
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag || k == null) goto _L4; else goto _L3
_L3:
        k.a(s, s1);
        dismiss();
        return;
        if (view != f) goto _L4; else goto _L5
_L5:
        dismiss();
        return;
    }
}
