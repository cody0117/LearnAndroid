// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.aadhk.restpos.c:
//            cn

final class co
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final cn a;

    co(cn cn1)
    {
        a = cn1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        cn.a(a, i);
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
