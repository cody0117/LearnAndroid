// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.bean.POSPrinterSetting;

// Referenced classes of package com.aadhk.restpos.d:
//            de

final class df
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final de a;

    df(de de1)
    {
        a = de1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        if (a.i.getConnType() != i)
        {
            a.i.setServiceName(de.a(a)[i]);
        }
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
