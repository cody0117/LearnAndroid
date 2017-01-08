// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.f.n;

// Referenced classes of package com.aadhk.restpos.c:
//            cc

public final class cb extends e
    implements android.view.View.OnClickListener
{

    private ImageView f;
    private ImageView g;
    private Button h;
    private Button i;
    private Button j;
    private EditText k;
    private CharSequence l;

    public cb(Context context)
    {
        super(context, 0x7f030042);
        f = (ImageView)findViewById(0x7f0b00d4);
        g = (ImageView)findViewById(0x7f0b00d5);
        h = (Button)findViewById(0x7f0b00b3);
        i = (Button)findViewById(0x7f0b0057);
        k = (EditText)findViewById(0x7f0b00c8);
        k.setHint(0x7f0901e7);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        k.setText(null);
        k.setSelectAllOnFocus(true);
        k.setOnClickListener(this);
        k.setOnFocusChangeListener(new cc(this));
        l = c.getString(0x7f090055);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        n.a(k);
_L4:
        return;
_L2:
        if (view == g)
        {
            n.b(k);
            return;
        }
        if (view != h)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = k.getText().toString();
        if ("".equals(s) || "0".equals(s))
        {
            k.setError(l);
            return;
        }
        if (a != null)
        {
            a.a(s);
            dismiss();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (view == i)
        {
            dismiss();
            return;
        }
        if (view != j)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b == null) goto _L4; else goto _L5
_L5:
        b.a();
        dismiss();
        return;
        if (view != k) goto _L4; else goto _L6
_L6:
        k.selectAll();
        return;
    }
}
