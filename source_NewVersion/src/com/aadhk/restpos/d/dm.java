// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.text.Editable;
import android.text.TextWatcher;
import com.aadhk.restpos.PrinterActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            dh

final class dm
    implements TextWatcher
{

    final dh a;

    dm(dh dh1)
    {
        a = dh1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        a.h.a(a.f());
    }
}
