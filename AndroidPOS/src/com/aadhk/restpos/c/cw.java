// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;

public final class cw extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemSelectedListener
{

    private Button f;
    private Button g;
    private Spinner h;
    private String i[];

    public cw(Context context, int j)
    {
        super(context, 0x7f030050);
        f = (Button)findViewById(0x7f09005a);
        g = (Button)findViewById(0x7f09005b);
        h = (Spinner)findViewById(0x7f090120);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnItemSelectedListener(this);
        i = context.getResources().getStringArray(0x7f0e001b);
        h.setAdapter(new ArrayAdapter(context, 0x1090009, i));
        for (int k = 0; k < i.length; k++)
        {
            if (String.valueOf(j).equals(i[k]))
            {
                h.setSelection(k);
            }
        }

    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131296346 2131296347: default 28
    //                   2131296346 34
    //                   2131296347 29;
           goto _L1 _L2 _L3
_L1:
        return;
_L3:
        dismiss();
        return;
_L2:
        if (a != null)
        {
            int j = Integer.parseInt(h.getSelectedItem().toString());
            a.a(Integer.valueOf(j));
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final void onItemSelected(AdapterView adapterview, View view, int j, long l)
    {
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
