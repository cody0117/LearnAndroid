// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.ax;
import java.util.HashMap;

// Referenced classes of package com.aadhk.restpos.d:
//            dh, dq

public final class dp extends dh
{

    private BroadcastReceiver a;
    private EditText o;

    public dp()
    {
    }

    static EditText a(dp dp1)
    {
        return dp1.o;
    }

    public final void a()
    {
        j.c(i);
    }

    protected final void b()
    {
        o = (EditText)g.findViewById(0x7f0b01cb);
        if (android.os.Build.VERSION.SDK_INT > 11)
        {
            if (((UsbManager)h.getSystemService("usb")).getDeviceList().size() > 0)
            {
                o.setText(0x7f090164);
            }
            a = new dq(this);
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
            intentfilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            h.registerReceiver(a, intentfilter);
        }
        super.b();
        l.setVisibility(8);
        k.setVisibility(0);
    }

    public final boolean c()
    {
        if (TextUtils.isEmpty(o.getText().toString()))
        {
            ax ax1 = new ax(h);
            ax1.a(getString(0x7f090165));
            ax1.show();
            return false;
        }
        if (TextUtils.isEmpty(b.getText().toString()))
        {
            b.setError(getResources().getString(0x7f090055));
            b.requestFocus();
            return false;
        } else
        {
            b.setError(null);
            return super.c();
        }
    }

    protected final void d()
    {
        super.d();
        i.setUsbName(o.getText().toString());
        i.setCommInitial(b.getText().toString());
        i.setCommCut(c.getText().toString());
        i.setCommDrawer(d.getText().toString());
        i.setCommBeep(e.getText().toString());
    }

    public final boolean e()
    {
        if (c())
        {
            d();
            return true;
        } else
        {
            return false;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f03007f, viewgroup, false);
        return g;
    }

    public final void onDestroy()
    {
        super.onDestroy();
        if (a != null)
        {
            h.unregisterReceiver(a);
        }
    }
}
