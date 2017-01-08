// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.hardware.usb.UsbManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bo;
import java.util.HashMap;

// Referenced classes of package com.aadhk.restpos.d:
//            gn, gy, gx

public final class gw extends gn
{

    private BroadcastReceiver a;
    private EditText p;

    public gw()
    {
    }

    static EditText a(gw gw1)
    {
        return gw1.p;
    }

    public final void a()
    {
        (new d(new gy(this, (byte)0), h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    protected final void b()
    {
        p = (EditText)g.findViewById(0x7f09021f);
        if (android.os.Build.VERSION.SDK_INT > 11)
        {
            if (((UsbManager)h.getSystemService("usb")).getDeviceList().size() > 0)
            {
                p.setText(0x7f080193);
            }
            a = new gx(this);
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
            intentfilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            h.registerReceiver(a, intentfilter);
        }
        super.b();
        k.setVisibility(8);
        j.setVisibility(0);
    }

    public final boolean c()
    {
        if (TextUtils.isEmpty(p.getText().toString()))
        {
            bo bo1 = new bo(h);
            bo1.a(0x7f080194);
            bo1.show();
            return false;
        }
        if (TextUtils.isEmpty(b.getText().toString()))
        {
            b.setError(getString(0x7f080085));
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
        i.setUsbName(p.getText().toString());
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
        g = layoutinflater.inflate(0x7f030097, viewgroup, false);
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
