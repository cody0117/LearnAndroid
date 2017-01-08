// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.bluetooth.BluetoothAdapter;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Spinner;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bo;

// Referenced classes of package com.aadhk.restpos.d:
//            gn

final class gr
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final gn a;

    gr(gn gn1)
    {
        a = gn1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        if (a.i.getConnType() == i) goto _L2; else goto _L1
_L1:
        if (3 != i) goto _L4; else goto _L3
_L3:
        bo bo1 = new bo(a.h);
        bo1.a(0x7f0802a9);
        bo1.show();
        a.i.setConnType(i);
_L6:
        a.h.a();
_L2:
        return;
_L4:
        if (1 == i)
        {
            if (BluetoothAdapter.getDefaultAdapter() == null)
            {
                bo bo5 = new bo(a.h);
                bo5.a(0x7f0802a9);
                bo5.show();
                gn.g(a).setSelection(a.i.getConnType());
            } else
            {
                a.i.setConnType(i);
            }
        } else
        if (2 == i)
        {
            if (android.os.Build.VERSION.SDK_INT > 11)
            {
                bo bo3 = new bo(a.h);
                bo3.a(0x7f0802ac);
                bo3.show();
                a.i.setConnType(i);
            } else
            {
                bo bo4 = new bo(a.h);
                bo4.a(0x7f0802ab);
                bo4.show();
                gn.g(a).setSelection(a.i.getConnType());
            }
        } else
        if (i == 0)
        {
            bo bo2 = new bo(a.h);
            bo2.a(0x7f0802a8);
            bo2.show();
            a.i.setConnType(i);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
