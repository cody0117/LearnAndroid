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
import com.aadhk.product.library.b.e;

// Referenced classes of package com.aadhk.restpos.c:
//            ac, ad, ae, af

public final class ab extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private EditText j;
    private EditText k;
    private af l;

    public ab(Context context, String s, String s1, String s2)
    {
        super(context, 0x7f030058);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        i = (EditText)findViewById(0x7f09012f);
        j = (EditText)findViewById(0x7f090130);
        k = (EditText)findViewById(0x7f090131);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText(s);
        i.setOnFocusChangeListener(new ac(this));
        j.setText(s1);
        j.setOnFocusChangeListener(new ad(this));
        k.setText(s2);
        k.setOnFocusChangeListener(new ae(this));
    }

    public final void a(af af1)
    {
        l = af1;
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        String s2;
        s = i.getText().toString();
        s1 = j.getText().toString();
        s2 = k.getText().toString();
        if (!TextUtils.isEmpty(s)) goto _L4; else goto _L3
_L3:
        i.setError(c.getString(0x7f080085));
_L6:
        return;
_L4:
        if (TextUtils.isEmpty(s1))
        {
            j.setError(c.getString(0x7f080085));
            return;
        }
        if (TextUtils.isEmpty(s2))
        {
            k.setError(c.getString(0x7f080085));
            return;
        }
        if (l != null)
        {
            l.a(s, s1, s2);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view == h && l != null)
        {
            l;
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
