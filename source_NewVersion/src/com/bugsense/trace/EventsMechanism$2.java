// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

// Referenced classes of package com.bugsense.trace:
//            EventsMechanism, G, BugSenseHandler

final class val.tag
    implements Runnable
{

    final String val$tag;

    public final void run()
    {
        String s;
        String s1;
        s = EventsMechanism.getFlatLine(val$tag);
        s1 = (new StringBuilder()).append("Event_").append(String.valueOf(System.currentTimeMillis())).append("-").append(Integer.toString((new Random(System.currentTimeMillis())).nextInt(0x1869f))).toString();
        BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/").append(s1).toString()));
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
        val$tag = s;
        super();
    }
}
