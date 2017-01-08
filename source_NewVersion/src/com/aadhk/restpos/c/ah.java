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
import com.aadhk.restpos.bean.Note;

public final class ah extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private CharSequence j;
    private Note k;

    public ah(Context context, Note note)
    {
        super(context, 0x7f03003b);
        if (note == null)
        {
            k = new Note();
        } else
        {
            k = note;
        }
        f = (Button)findViewById(0x7f0b0056);
        g = (Button)findViewById(0x7f0b0057);
        i = (EditText)findViewById(0x7f0b00d7);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        i.setText(k.getName());
        i.setSelectAllOnFocus(true);
        i.setOnClickListener(this);
        j = c.getString(0x7f090055);
    }

    public final void b()
    {
        h = (Button)findViewById(0x7f0b00c9);
        h.setOnClickListener(this);
        h.setVisibility(0);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (!"".equals(i.getText().toString())) goto _L4; else goto _L3
_L3:
        i.setError(j);
_L6:
        return;
_L4:
        if (a != null)
        {
            k.setName(i.getText().toString());
            k.setType(1);
            a.a(k);
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
