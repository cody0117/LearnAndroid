// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.bluetooth.BluetoothDevice;
import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.bean.POSPrinterSetting;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            gj

final class gk
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final gj a;

    gk(gj gj1)
    {
        a = gj1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        gj.a(a, 1 + gj.a(a));
        if (gj.a(a) > 1)
        {
            a.i.setBtName(((BluetoothDevice)gj.b(a).get(i)).getName());
        }
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
