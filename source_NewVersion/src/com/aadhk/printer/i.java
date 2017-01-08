// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.aadhk.printer:
//            j, e

public final class i
{

    private static int a = 10000;
    private boolean b;
    private Context c;
    private UsbDeviceConnection d;
    private UsbEndpoint e;
    private UsbInterface f;
    private UsbManager g;
    private boolean h;
    private final BroadcastReceiver i = new j(this);

    public i(Context context)
    {
        b = true;
        c = context;
        g = (UsbManager)context.getSystemService("usb");
    }

    static void a(i k)
    {
        k.h = true;
    }

    private boolean a(UsbDevice usbdevice)
    {
        if (g.hasPermission(usbdevice)) goto _L2; else goto _L1
_L1:
        Calendar calendar;
        h = false;
        PendingIntent pendingintent = PendingIntent.getBroadcast(c, 0, new Intent("com.aadhk.restpos.USB_PERMISSION"), 0);
        IntentFilter intentfilter = new IntentFilter("com.aadhk.restpos.USB_PERMISSION");
        c.registerReceiver(i, intentfilter);
        g.requestPermission(usbdevice, pendingintent);
        calendar = Calendar.getInstance();
        calendar.add(13, 20);
_L4:
        if (!h && !g.hasPermission(usbdevice)) goto _L3; else goto _L2
_L2:
        return g.hasPermission(usbdevice);
_L3:
        try
        {
            (new StringBuilder("=========permissionGrantedFinish========")).append(h);
            if (calendar.before(Calendar.getInstance()))
            {
                throw new e("request usb printer permission timeout");
            }
        }
        catch (InterruptedException interruptedexception)
        {
            throw new e((new StringBuilder("request usb printer permission error: ")).append(interruptedexception).toString());
        }
        Thread.sleep(100L);
          goto _L4
    }

    static BroadcastReceiver b(i k)
    {
        return k.i;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (d != null)
        {
            d.close();
            boolean flag = d.releaseInterface(f);
            (new StringBuilder("===mConnection.releaseInterface(mUsbInterface):")).append(flag);
        }
        f = null;
        d = null;
        e = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        HashMap hashmap;
        Iterator iterator;
        (new StringBuilder("=========openPrinter========")).append(s);
        hashmap = g.getDeviceList();
        iterator = hashmap.values().iterator();
_L3:
        if (!iterator.hasNext())
        {
            throw new e((new StringBuilder("Cannot open usb printer, usbInterface: deviceList:")).append(hashmap).toString());
        }
          goto _L1
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L1:
        UsbDevice usbdevice = (UsbDevice)iterator.next();
        if (usbdevice == null) goto _L3; else goto _L2
_L2:
        boolean flag = g.hasPermission(usbdevice);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        flag = a(usbdevice);
        (new StringBuilder("=========device========")).append(usbdevice);
        (new StringBuilder("=========hasPermission========")).append(flag);
        if (!flag) goto _L5; else goto _L4
_L4:
        if (usbdevice.getInterfaceCount() <= 0) goto _L5; else goto _L6
_L6:
        int k = 0;
_L12:
        if (k >= usbdevice.getInterfaceCount()) goto _L3; else goto _L7
_L7:
        UsbInterface usbinterface;
        usbinterface = usbdevice.getInterface(k);
        (new StringBuilder("=========connection.claimInterface========")).append(usbinterface);
        (new StringBuilder("\u63A5\u53E3\u662F:")).append(k).append(", \u7C7B\u662F:").append(usbinterface.getInterfaceClass());
        if (usbinterface.getInterfaceClass() != 7) goto _L9; else goto _L8
_L8:
        int l = usbinterface.getEndpointCount();
        int i1 = 0;
          goto _L10
_L11:
        UsbEndpoint usbendpoint = usbinterface.getEndpoint(i1);
        (new StringBuilder("\u7AEF\u70B9\u662F:")).append(i1).append(", \u65B9\u5411\u662F:").append(usbendpoint.getDirection()).append(", \u7C7B\u578B\u662F:").append(usbendpoint.getType());
        if (usbendpoint.getDirection() != 0 || usbendpoint.getType() != 2)
        {
            break MISSING_BLOCK_LABEL_399;
        }
        (new StringBuilder("found usb printer \u63A5\u53E3\u662F:")).append(k).append(", \u7AEF\u70B9\u662F:").append(i1);
        e = usbendpoint;
        f = usbinterface;
        d = g.openDevice(usbdevice);
        boolean flag1 = d.claimInterface(usbinterface, b);
        (new StringBuilder("==connection isOpen:")).append(flag1);
        this;
        JVM INSTR monitorexit ;
        return;
        i1++;
        continue; /* Loop/switch isn't completed */
_L5:
        (new StringBuilder("===hasPermission=false || device.getInterfaceCount() == 0")).append(usbdevice);
          goto _L3
_L10:
        if (i1 < l) goto _L11; else goto _L9
_L9:
        k++;
          goto _L12
    }

    public final void a(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        (new StringBuilder("=========print========")).append(abyte0.length);
        if (abyte0.length <= 1024) goto _L2; else goto _L1
_L1:
        int k;
        int l;
        k = 0;
        l = 0;
_L12:
        double d1 = k;
        double d2 = Math.ceil((double)abyte0.length / 1024D);
        if (d1 < d2) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        int i1 = l + 1024;
        if (i1 <= abyte0.length) goto _L6; else goto _L5
_L5:
        byte abyte1[];
        abyte1 = new byte[abyte0.length - l];
        System.arraycopy(abyte0, l, abyte1, 0, abyte0.length - l);
_L9:
        int j1 = d.bulkTransfer(e, abyte1, abyte1.length, a);
        if (j1 >= 0) goto _L8; else goto _L7
_L7:
        throw new e((new StringBuilder("USB printer error - bulkTransfer result:")).append(j1).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L6:
        abyte1 = new byte[1024];
        System.arraycopy(abyte0, l, abyte1, 0, 1024);
          goto _L9
_L2:
        int k1;
        (new StringBuilder("=========content.length========")).append(abyte0.length);
        k1 = d.bulkTransfer(e, abyte0, abyte0.length, a);
        if (k1 >= 0) goto _L3; else goto _L10
_L10:
        throw new e((new StringBuilder("USB printer error - bulkTransfer result:")).append(k1).toString());
_L8:
        l += 1024;
        k++;
        if (true) goto _L12; else goto _L11
_L11:
    }

}
