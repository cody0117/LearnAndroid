// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;

// Referenced classes of package com.aadhk.printer:
//            h

public final class k
{

    private OutputStream a;
    private Socket b;
    private String c;
    private int d;

    public k()
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
        throw new h("TCP printer: close printer error", exception1);
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
        throw new h("TCP printer: open printer error", exception1);
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
        if (outputstream == null) goto _L2; else goto _L1
_L1:
        if (!b.isConnected())
        {
            a(c, d);
            Thread.sleep(1000L);
        }
        if (abyte0.length <= 1024)
        {
            break MISSING_BLOCK_LABEL_194;
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
        int l = j + 1024;
        byte abyte1[];
        if (l <= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        abyte1 = new byte[abyte0.length - j];
        System.arraycopy(abyte0, j, abyte1, 0, abyte0.length - j);
_L5:
        a.write(abyte1);
        a.flush();
        j += 1024;
        Thread.sleep(30L);
        i++;
          goto _L4
        abyte1 = new byte[1024];
        System.arraycopy(abyte0, j, abyte1, 0, 1024);
          goto _L5
        Exception exception1;
        exception1;
        throw new h("TCP printer print receipt error", exception1);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        a.write(abyte0);
        a.flush();
          goto _L2
    }
}
