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
//            ag

public final class af extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private CharSequence j;
    private boolean k;

    public af(Context context, String s)
    {
        super(context, 0x7f03005a);
        k = false;
        f = (Button)findViewById(0x7f0b00b3);
        g = (Button)findViewById(0x7f0b0057);
        i = (EditText)findViewById(0x7f0b00c8);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText(s);
        i.setSelectAllOnFocus(true);
        i.setOnClickListener(this);
        i.setOnFocusChangeListener(new ag(this));
        j = c.getString(0x7f090055);
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
        if (a == null) goto _L6; else goto _L5
_L5:
        a.a(i.getText().toString());
        dismiss();
        return;
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view != h)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b == null) goto _L6; else goto _L7
_L7:
        b.a();
        dismiss();
        return;
        if (view != i) goto _L6; else goto _L8
_L8:
        i.selectAll();
        return;
    }
}
