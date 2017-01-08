// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.UUID;

// Referenced classes of package com.aadhk.printer:
//            d, f

final class e
    implements Runnable
{

    final d a;
    private final String b;

    e(d d1, String s)
    {
        a = d1;
        b = s;
        super();
    }

    public final void run()
    {
        d.a(a, b);
        (new StringBuilder("bluetoothName:")).append(b);
        BluetoothDevice bluetoothdevice = d.b(a);
        (new StringBuilder("bluetoothDevice:")).append(bluetoothdevice);
        if (bluetoothdevice == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        (new f(a, bluetoothdevice)).start();
        try
        {
            d.a(a, bluetoothdevice.createRfcommSocketToServiceRecord(UUID.fromString(d.a)));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        try
        {
            d.a(a).connect();
        }
        catch (IOException ioexception1)
        {
            try
            {
                d d1 = a;
                Class class1 = bluetoothdevice.getClass();
                Class aclass[] = new Class[1];
                aclass[0] = Integer.TYPE;
                Method method = class1.getMethod("createRfcommSocket", aclass);
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(1);
                d.a(d1, (BluetoothSocket)method.invoke(bluetoothdevice, aobj));
                d.a(a).connect();
            }
            catch (IOException ioexception3)
            {
                try
                {
                    d.a(a).close();
                }
                catch (IOException ioexception4)
                {
                    ioexception1.printStackTrace();
                }
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                illegalaccessexception.printStackTrace();
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                illegalargumentexception.printStackTrace();
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                invocationtargetexception.printStackTrace();
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                nosuchmethodexception.printStackTrace();
            }
        }
        d.a(a, d.a(a).getOutputStream());
        return;
        IOException ioexception2;
        ioexception2;
        ioexception2.printStackTrace();
        return;
    }
}
