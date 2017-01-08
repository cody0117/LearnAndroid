// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.aadhk.restpos.d:
//            kk

final class kl
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final kk a;

    kl(kk kk1)
    {
        a = kk1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        kk.a(a, kk.a(a)[i]);
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
