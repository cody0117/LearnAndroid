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
//            do

public final class dn extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private EditText j;
    private CharSequence k;
    private do l;

    public dn(Context context, String s)
    {
        super(context, 0x7f030068);
        h = (Button)findViewById(0x7f090167);
        f = (Button)findViewById(0x7f09005a);
        g = (Button)findViewById(0x7f09005b);
        i = (EditText)findViewById(0x7f090166);
        j = (EditText)findViewById(0x7f090165);
        h.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText("");
        j.setText(s);
        k = c.getString(0x7f080085);
    }

    public final void a(do do1)
    {
        l = do1;
    }

    public final void onClick(View view)
    {
        if (view != h) goto _L2; else goto _L1
_L1:
        if (l != null)
        {
            l.a();
        }
_L4:
        return;
_L2:
        if (view != f)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (TextUtils.isEmpty(i.getText().toString()))
        {
            i.setError(k);
            return;
        }
        if (TextUtils.isEmpty(j.getText().toString()))
        {
            j.setError(k);
            return;
        }
        if (l == null) goto _L4; else goto _L3
_L3:
        l;
        dismiss();
        return;
        if (view != g) goto _L4; else goto _L5
_L5:
        dismiss();
        return;
    }
}
