// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

// Referenced classes of package com.aadhk.restpos:
//            PayCloseOutActivity

final class bz
    implements TextWatcher
{

    final PayCloseOutActivity a;
    private EditText b;

    public bz(PayCloseOutActivity paycloseoutactivity, EditText edittext)
    {
        a = paycloseoutactivity;
        super();
        b = edittext;
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        switch (b.getId())
        {
        default:
            return;

        case 2131296365: 
            PayCloseOutActivity.u(a);
            // fall through

        case 2131296375: 
            PayCloseOutActivity.v(a);
            return;

        case 2131296372: 
            PayCloseOutActivity.v(a);
            return;
        }
    }
}