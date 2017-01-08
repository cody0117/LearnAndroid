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
//            ae

public final class ad extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private ImageView h;
    private ImageView i;
    private EditText j;
    private CharSequence k;
    private boolean l;

    public ad(Context context, String s)
    {
        super(context, 0x7f030042);
        l = true;
        f = (Button)findViewById(0x7f0b00b3);
        g = (Button)findViewById(0x7f0b0057);
        j = (EditText)findViewById(0x7f0b00c8);
        h = (ImageView)findViewById(0x7f0b00d4);
        i = (ImageView)findViewById(0x7f0b00d5);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        j.setText(s);
        j.setSelectAllOnFocus(true);
        j.setOnClickListener(this);
        j.setOnFocusChangeListener(new ae(this));
        k = c.getString(0x7f090055);
    }

    public final void b()
    {
        j.setHint(0x7f090309);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 6: default 64
    //                   2131427415: 149
    //                   2131427507: 81
    //                   2131427528: 175
    //                   2131427529: 154
    //                   2131427540: 65
    //                   2131427541: 73;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return;
_L6:
        n.a(j);
        return;
_L7:
        n.b(j);
        return;
_L3:
        if (l && "".equals(j.getText().toString()))
        {
            j.setError(k);
            return;
        }
        if (a != null)
        {
            a.a(j.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        dismiss();
        return;
_L5:
        if (b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        j.selectAll();
        return;
    }
}
