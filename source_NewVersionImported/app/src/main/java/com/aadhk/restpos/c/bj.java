// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.aadhk.restpos.c:
//            bi

final class bj
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final bi a;

    bj(bi bi1)
    {
        a = bi1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        bi.a(a, i);
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
