// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;

// Referenced classes of package com.aadhk.printer:
//            e

public final class h
{

    private OutputStream a;
    private Socket b;
    private String c;
    private int d;

    public h()
    {
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (a != null)
        {
            a.close();
        }
        if (b != null)
        {
            b.close();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        throw new e("TCP printer: close printer error", exception1);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(String s, int i)
    {
        this;
        JVM INSTR monitorenter ;
        c = s;
        d = i;
        InetSocketAddress inetsocketaddress = new InetSocketAddress(s, i);
        b = new Socket();
        b.setSoTimeout(10000);
        b.setKeepAlive(false);
        b.setTcpNoDelay(true);
        b.setReuseAddress(true);
        b.connect(inetsocketaddress, 10000);
        a = b.getOutputStream();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        throw new e("TCP printer: open printer error", exception1);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        OutputStream outputstream = a;
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (!b.isConnected())
        {
            a(c, d);
            Thread.sleep(1000L);
        }
        a.write(abyte0);
        a.flush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        throw new e("TCP printer print receipt error", exception1);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
