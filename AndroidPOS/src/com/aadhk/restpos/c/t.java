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
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.util.r;

public final class t extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private ImageButton h;
    private ImageButton i;
    private ImageButton j;
    private ImageButton k;
    private ImageButton l;
    private ImageButton m;
    private EditText n;
    private EditText o;
    private EditText p;
    private CharSequence q;
    private r r;

    public t(Context context)
    {
        super(context, 0x7f030040);
        r = new r(context);
        n = (EditText)findViewById(0x7f0900e3);
        o = (EditText)findViewById(0x7f0900e7);
        p = (EditText)findViewById(0x7f0900eb);
        h = (ImageButton)findViewById(0x7f0900e4);
        i = (ImageButton)findViewById(0x7f0900e5);
        j = (ImageButton)findViewById(0x7f0900e8);
        k = (ImageButton)findViewById(0x7f0900e9);
        l = (ImageButton)findViewById(0x7f0900ec);
        m = (ImageButton)findViewById(0x7f0900ed);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        k.setOnClickListener(this);
        l.setOnClickListener(this);
        m.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        n.setText((new StringBuilder()).append(r.F()).toString());
        o.setText((new StringBuilder()).append(r.G()).toString());
        p.setText((new StringBuilder()).append(r.H()).toString());
        q = c.getString(0x7f080085);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (a == null) goto _L4; else goto _L3
_L3:
        String s;
        String s1;
        String s2;
        s = n.getText().toString();
        s1 = o.getText().toString();
        s2 = p.getText().toString();
        if (!TextUtils.isEmpty(s)) goto _L6; else goto _L5
_L5:
        n.setError(q);
_L4:
        return;
_L6:
        if (TextUtils.isEmpty(s1))
        {
            o.setError(q);
            return;
        }
        if (TextUtils.isEmpty(s2))
        {
            p.setError(q);
            return;
        } else
        {
            String s3 = (new StringBuilder()).append(s).append(",").append(s1).append(",").append(s2).toString();
            a.a(s3);
            dismiss();
            return;
        }
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view == h)
        {
            n.requestFocus();
            int j2 = Integer.parseInt(n.getText().toString());
            n.setText((new StringBuilder()).append(j2 + 1).toString());
            return;
        }
        if (view != i)
        {
            break; /* Loop/switch isn't completed */
        }
        n.requestFocus();
        int i2 = Integer.parseInt(n.getText().toString());
        if (i2 > 0)
        {
            n.setText((new StringBuilder()).append(i2 - 1).toString());
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (view == j)
        {
            o.requestFocus();
            int l1 = Integer.parseInt(o.getText().toString());
            o.setText((new StringBuilder()).append(l1 + 1).toString());
            return;
        }
        if (view != k)
        {
            break; /* Loop/switch isn't completed */
        }
        o.requestFocus();
        int k1 = Integer.parseInt(o.getText().toString());
        if (k1 > 0)
        {
            o.setText((new StringBuilder()).append(k1 - 1).toString());
            return;
        }
        if (true) goto _L4; else goto _L8
_L8:
        if (view == l)
        {
            p.requestFocus();
            int j1 = Integer.parseInt(p.getText().toString());
            p.setText((new StringBuilder()).append(j1 + 1).toString());
            return;
        }
        if (view == m)
        {
            p.requestFocus();
            int i1 = Integer.parseInt(p.getText().toString());
            if (i1 > 0)
            {
                p.setText((new StringBuilder()).append(i1 - 1).toString());
                return;
            }
        }
        if (true) goto _L4; else goto _L9
_L9:
    }
}
