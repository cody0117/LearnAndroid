// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;

// Referenced classes of package com.aadhk.restpos.c:
//            aq

public final class ap extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private CharSequence j;
    private boolean k;

    public ap(Context context, String s)
    {
        super(context, 0x7f03006b);
        k = false;
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        i = (EditText)findViewById(0x7f0900da);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText(s);
        i.setOnFocusChangeListener(new aq(this));
        j = c.getString(0x7f080085);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (!k || !"".equals(i.getText().toString())) goto _L4; else goto _L3
_L3:
        i.setError(j);
_L6:
        return;
_L4:
        if (a != null)
        {
            a.a(i.getText().toString());
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
        if (view == h && b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
