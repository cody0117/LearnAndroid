// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

// Referenced classes of package com.bugsense.trace:
//            G, BugSenseHandler

final class val.line
    implements Runnable
{

    final String val$line;

    public final void run()
    {
        File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/fixnotification").toString());
        if (file.exists())
        {
            file.delete();
        }
        BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder()).append(G.FILES_PATH).append("/fixnotification").toString()));
        bufferedwriter.write(val$line);
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
        val$line = s;
        super();
    }
}
