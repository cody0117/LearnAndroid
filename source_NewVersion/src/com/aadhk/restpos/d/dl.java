// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Spinner;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.ax;

// Referenced classes of package com.aadhk.restpos.d:
//            dh

final class dl
    implements android.widget.AdapterView.OnItemSelectedListener
{

    final dh a;

    dl(dh dh1)
    {
        a = dh1;
        super();
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        if (a.i.getConnType() == i) goto _L2; else goto _L1
_L1:
        if (3 != i) goto _L4; else goto _L3
_L3:
        ax ax1 = new ax(a.h);
        ax1.a(0x7f09024d);
        ax1.show();
        a.i.setConnType(i);
_L6:
        a.h.a();
_L2:
        return;
_L4:
        if (1 == i)
        {
            ax ax2 = new ax(a.h);
            ax2.a(0x7f09024e);
            ax2.show();
            dh.g(a).setSelection(a.i.getConnType());
        } else
        if (2 == i)
        {
            if (android.os.Build.VERSION.SDK_INT > 11)
            {
                ax ax4 = new ax(a.h);
                ax4.a(0x7f090250);
                ax4.show();
                a.i.setConnType(i);
            } else
            {
                ax ax5 = new ax(a.h);
                ax5.a(0x7f09024f);
                ax5.show();
                dh.g(a).setSelection(a.i.getConnType());
            }
        } else
        if (i == 0)
        {
            ax ax3 = new ax(a.h);
            ax3.a(0x7f09024c);
            ax3.show();
            a.i.setConnType(i);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
