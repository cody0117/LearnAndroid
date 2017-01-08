// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;

public final class by extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private Button i;
    private Button j;
    private Button k;
    private Button l;
    private Button m;
    private Button n;
    private Button o;
    private Button p;
    private Button q;

    public by(Context context)
    {
        super(context, 0x7f03004d);
        f = (Button)findViewById(0x7f0b00fd);
        g = (Button)findViewById(0x7f0b00fe);
        h = (Button)findViewById(0x7f0b00ff);
        i = (Button)findViewById(0x7f0b0100);
        j = (Button)findViewById(0x7f0b0101);
        k = (Button)findViewById(0x7f0b0102);
        l = (Button)findViewById(0x7f0b0103);
        m = (Button)findViewById(0x7f0b0104);
        n = (Button)findViewById(0x7f0b0105);
        o = (Button)findViewById(0x7f0b0106);
        p = (Button)findViewById(0x7f0b0107);
        q = (Button)findViewById(0x7f0b0108);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        k.setOnClickListener(this);
        l.setOnClickListener(this);
        m.setOnClickListener(this);
        n.setOnClickListener(this);
        o.setOnClickListener(this);
        p.setOnClickListener(this);
        q.setOnClickListener(this);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131427581 2131427592: default 68
    //                   2131427581 69
    //                   2131427582 100
    //                   2131427583 131
    //                   2131427584 162
    //                   2131427585 193
    //                   2131427586 224
    //                   2131427587 255
    //                   2131427588 286
    //                   2131427589 317
    //                   2131427590 348
    //                   2131427591 379
    //                   2131427592 410;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L1:
        return;
_L2:
        if (a != null)
        {
            a.a(f.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (a != null)
        {
            a.a(g.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (a != null)
        {
            a.a(h.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (a != null)
        {
            a.a(i.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (a != null)
        {
            a.a(j.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (a != null)
        {
            a.a(k.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (a != null)
        {
            a.a(l.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (a != null)
        {
            a.a(m.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (a != null)
        {
            a.a(n.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L11:
        if (a != null)
        {
            a.a(o.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L12:
        if (a != null)
        {
            a.a(p.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if (a != null)
        {
            a.a(q.getText().toString());
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L14
_L14:
    }
}
