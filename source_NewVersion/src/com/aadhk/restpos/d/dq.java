// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.widget.EditText;

// Referenced classes of package com.aadhk.restpos.d:
//            dp

final class dq extends BroadcastReceiver
{

    final dp a;

    dq(dp dp1)
    {
        a = dp1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(s))
        {
            if ((UsbDevice)intent.getParcelableExtra("device") != null)
            {
                dp.a(a).setText("");
            }
        } else
        if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(s) && (UsbDevice)intent.getParcelableExtra("device") != null)
        {
            dp.a(a).setText(0x7f090164);
            return;
        }
    }
}
