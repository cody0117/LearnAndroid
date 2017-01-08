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

final class val.lastID
    implements Runnable
{

    final String val$lastID;

    public final void run()
    {
        BufferedWriter bufferedwriter;
        File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/lastCrashID").toString());
        if (!file.exists())
        {
            try
            {
                file.createNewFile();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        }
        bufferedwriter = new BufferedWriter(new FileWriter(file));
        bufferedwriter.write(val$lastID);
        bufferedwriter.newLine();
        bufferedwriter.flush();
        bufferedwriter.close();
        bufferedwriter.close();
_L2:
        return;
        IOException ioexception3;
        ioexception3;
        ioexception3.printStackTrace();
        return;
        IOException ioexception;
        ioexception;
        bufferedwriter = null;
_L5:
        G.TAG;
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            ioexception.printStackTrace();
        }
        if (bufferedwriter == null) goto _L2; else goto _L1
_L1:
        try
        {
            bufferedwriter.close();
            return;
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return;
        Exception exception;
        exception;
        bufferedwriter = null;
_L4:
        if (bufferedwriter != null)
        {
            try
            {
                bufferedwriter.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
          goto _L5
    }

    Handler()
    {
        val$lastID = s;
        super();
    }
}
