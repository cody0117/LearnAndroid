// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Handler;
import android.os.Looper;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.aadhk.printer:
//            h, e

public final class d
{

    public static String a = "00001101-0000-1000-8000-00805F9B34FB";
    private OutputStream b;
    private BluetoothSocket c;
    private String d;

    public d()
    {
    }

    static BluetoothSocket a(d d1)
    {
        return d1.c;
    }

    static void a(d d1, BluetoothSocket bluetoothsocket)
    {
        d1.c = bluetoothsocket;
    }

    static void a(d d1, OutputStream outputstream)
    {
        d1.b = outputstream;
    }

    static void a(d d1, String s)
    {
        d1.d = s;
    }

    static BluetoothDevice b(d d1)
    {
        Set set = BluetoothAdapter.getDefaultAdapter().getBondedDevices();
        if (set.size() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = set.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return null;
_L3:
        BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
        if (bluetoothdevice.getName().equals(d1.d))
        {
            (new StringBuilder("found device:")).append(bluetoothdevice.getName());
            return bluetoothdevice;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (b != null)
        {
            b.close();
        }
        if (c != null)
        {
            c.close();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        throw new h("Bluetooth printer: close printer error", exception1);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        (new Handler(Looper.getMainLooper())).post(new e(this, s));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        OutputStream outputstream = b;
        if (outputstream == null) goto _L2; else goto _L1
_L1:
        if (!c.isConnected())
        {
            (new StringBuilder("bluetoothAddress1:")).append(d);
            a(d);
            Thread.sleep(1000L);
        }
        if (abyte0.length <= 1024)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        int i;
        int j;
        i = 0;
        j = 0;
_L4:
        double d1 = i;
        double d2 = Math.ceil((double)abyte0.length / 1024D);
        if (d1 < d2) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        int k = j + 1024;
        byte abyte1[];
        if (k <= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        abyte1 = new byte[abyte0.length - j];
        System.arraycopy(abyte0, j, abyte1, 0, abyte0.length - j);
_L5:
        b.write(abyte1);
        b.flush();
        j += 1024;
        Thread.sleep(30L);
        i++;
          goto _L4
        abyte1 = new byte[1024];
        System.arraycopy(abyte0, j, abyte1, 0, 1024);
          goto _L5
        Exception exception1;
        exception1;
        throw new h("Bluetooth printer print receipt error", exception1);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        b.write(abyte0);
        b.flush();
          goto _L2
    }

}
