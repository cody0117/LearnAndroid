// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.aadhk.restpos.d:
//            fu

final class fv
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final fu a;

    fv(fu fu1)
    {
        a = fu1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        fu.a(a, fu.a(a)[i]);
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
