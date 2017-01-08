// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import java.io.IOException;
import java.util.UUID;

// Referenced classes of package com.aadhk.printer:
//            d

final class f extends Thread
{

    final d a;

    public f(d d1, BluetoothDevice bluetoothdevice)
    {
        a = d1;
        super();
        BluetoothSocket bluetoothsocket1 = bluetoothdevice.createRfcommSocketToServiceRecord(UUID.fromString(d.a));
        BluetoothSocket bluetoothsocket = bluetoothsocket1;
_L2:
        d.a(d1, bluetoothsocket);
        return;
        IOException ioexception;
        ioexception;
        bluetoothsocket = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void run()
    {
        d.a(a).connect();
        try
        {
            d.a(a, d.a(a).getOutputStream());
            return;
        }
        catch (IOException ioexception2)
        {
            try
            {
                ioexception2.printStackTrace();
                return;
            }
            catch (IOException ioexception) { }
        }
        try
        {
            d.a(a).close();
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
    }
}
