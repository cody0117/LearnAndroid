// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;

// Referenced classes of package com.aadhk.printer:
//            l

final class m extends BroadcastReceiver
{

    final l a;

    m(l l1)
    {
        a = l1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        String s;
        s = intent.getAction();
        (new StringBuilder("=========mUsbReceiver========")).append(s);
        if (!"com.aadhk.restpos.USB_PERMISSION".equals(s)) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        intent.getParcelableExtra("device");
        intent.getBooleanExtra("permission", false);
        l.a(a);
        this;
        JVM INSTR monitorexit ;
_L4:
        context.unregisterReceiver(l.b(a));
        return;
        Exception exception;
        exception;
        throw exception;
_L2:
        if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(s) && (UsbDevice)intent.getParcelableExtra("device") != null)
        {
            a.a();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
