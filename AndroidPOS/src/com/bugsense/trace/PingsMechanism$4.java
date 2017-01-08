// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

// Referenced classes of package com.bugsense.trace:
//            PingsMechanism, G, BugSenseHandler

final class val.mem
    implements Runnable
{

    final String val$cpu;
    final String val$mem;
    final String val$tag;
    final int val$type;

    public final void run()
    {
        String s;
        String s2;
        s = PingsMechanism.getFlatLine(val$type, val$tag, val$cpu, val$mem);
        String s1 = "Ping_";
        if (val$type == 1)
        {
            s1 = "Gnip_";
        }
        if (val$type == 2 || val$type == 3)
        {
            s1 = "Perf_";
        }
        s2 = (new StringBuilder()).append(s1).append(String.valueOf(System.currentTimeMillis())).append("-").append(Integer.toString((new Random(System.currentTimeMillis())).nextInt(0x1869f))).toString();
        BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/").append(s2).toString()));
        bufferedwriter.write(s);
        bufferedwriter.flush();
        bufferedwriter.close();
_L1:
        return;
        IOException ioexception;
        ioexception;
        G.TAG;
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            ioexception.printStackTrace();
            return;
        }
          goto _L1
    }

    ()
    {
        val$type = i;
        val$tag = s;
        val$cpu = s1;
        val$mem = s2;
        super();
    }
}
