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

public final class ar extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private EditText h;
    private ImageButton i;
    private ImageButton j;
    private r k;

    public ar(Context context, int l)
    {
        super(context, 0x7f03006d);
        k = new r(context);
        h = (EditText)findViewById(0x7f09016b);
        i = (ImageButton)findViewById(0x7f0900f4);
        j = (ImageButton)findViewById(0x7f0900f5);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        if (l == 1)
        {
            h.setHint(c.getString(0x7f0803b1));
            h.setText((new StringBuilder()).append(k.I()).toString());
            return;
        } else
        {
            h.setHint(c.getString(0x7f0803b2));
            h.setText((new StringBuilder()).append(k.J() / 1000).toString());
            return;
        }
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (a == null) goto _L4; else goto _L3
_L3:
        String s = h.getText().toString();
        if (!TextUtils.isEmpty(s)) goto _L6; else goto _L5
_L5:
        h.setError(c.getString(0x7f080085));
_L4:
        return;
_L6:
        a.a(s);
        dismiss();
        return;
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view == i)
        {
            int i1 = Integer.parseInt(h.getText().toString());
            h.setText((new StringBuilder()).append(i1 + 1).toString());
            return;
        }
        if (view == j)
        {
            int l = Integer.parseInt(h.getText().toString());
            if (l > 0)
            {
                h.setText((new StringBuilder()).append(l - 1).toString());
                return;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
    }
}
