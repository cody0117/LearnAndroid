// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.bean.POSPrinterSetting;

// Referenced classes of package com.aadhk.restpos.d:
//            gf

final class gg
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final gf a;

    gg(gf gf1)
    {
        a = gf1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        a.i.setServiceName(gf.a(a)[i]);
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
