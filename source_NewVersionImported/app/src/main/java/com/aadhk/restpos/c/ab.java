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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.c:
//            ac

public final class ab extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;

    public ab(Context context, String s)
    {
        super(context, 0x7f030049);
        f = (Button)findViewById(0x7f0b00b3);
        g = (Button)findViewById(0x7f0b0057);
        i = (EditText)findViewById(0x7f0b00c8);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText(s);
        i.setSelectAllOnFocus(true);
        i.setOnClickListener(this);
        i.setOnFocusChangeListener(new ac(this));
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        String s = i.getText().toString();
        if (!"".equals(s)) goto _L4; else goto _L3
_L3:
        i.setError(c.getString(0x7f090055));
_L6:
        return;
_L4:
        if (!Pattern.compile("[a-zA-Z0-9-]*[0-9]+").matcher(s).matches())
        {
            i.setError(c.getString(0x7f0901f8));
            return;
        }
        if (a == null) goto _L6; else goto _L5
_L5:
        a.a(s);
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
