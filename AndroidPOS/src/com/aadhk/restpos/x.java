// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            KitchenActivity, DataTransferService, v

final class x extends Thread
{

    final KitchenActivity a;

    private x(KitchenActivity kitchenactivity)
    {
        a = kitchenactivity;
        super();
    }

    x(KitchenActivity kitchenactivity, byte byte0)
    {
        this(kitchenactivity);
    }

    public final void run()
    {
_L1:
        ServerSocket serversocket;
        Socket socket;
        serversocket = new ServerSocket(8988);
        socket = serversocket.accept();
        com.aadhk.restpos.KitchenActivity.d(a).add(socket);
        String s = DataTransferService.a(socket.getInputStream(), new ByteArrayOutputStream());
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (s.equals("1"))
        {
            (new d(new v(a, socket), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
_L2:
        serversocket.close();
          goto _L1
        IOException ioexception;
        ioexception;
        ioexception.getMessage();
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L2
    }
}
