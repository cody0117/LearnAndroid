// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

// Referenced classes of package com.bugsense.trace:
//            G, BugSenseHandler

final class Handler
    implements Runnable
{

    public final void run()
    {
        BufferedWriter bufferedwriter;
        BufferedReader bufferedreader;
        Integer integer1;
        BufferedWriter bufferedwriter1;
        bufferedwriter = null;
        File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/crashCounter").toString());
        Integer integer2;
        Integer integer3;
        if (!file.exists())
        {
            try
            {
                file.createNewFile();
            }
            catch (IOException ioexception7)
            {
                ioexception7.printStackTrace();
            }
        }
        bufferedreader = new BufferedReader(new FileReader(file));
        Integer.valueOf(0);
        integer3 = Integer.valueOf(Integer.parseInt(bufferedreader.readLine().trim()));
        integer1 = integer3;
_L1:
        integer2 = Integer.valueOf(1 + integer1.intValue());
        bufferedwriter1 = new BufferedWriter(new FileWriter(file));
        bufferedwriter1.write(String.valueOf(integer2));
        bufferedwriter1.newLine();
        bufferedwriter1.flush();
        bufferedwriter1.close();
        Exception exception1;
        Integer integer;
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception5)
        {
            ioexception5.printStackTrace();
        }
        bufferedwriter1.close();
_L3:
        return;
        exception1;
        integer = Integer.valueOf(0);
        integer1 = integer;
          goto _L1
        IOException ioexception6;
        ioexception6;
        ioexception6.printStackTrace();
        return;
        IOException ioexception;
        ioexception;
        BufferedReader bufferedreader1 = null;
_L6:
        G.TAG;
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            ioexception.printStackTrace();
        }
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        }
        if (bufferedwriter == null) goto _L3; else goto _L2
_L2:
        try
        {
            bufferedwriter.close();
            return;
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
        return;
        Exception exception;
        exception;
        bufferedreader = null;
_L5:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        }
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
        bufferedwriter = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedwriter = bufferedwriter1;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedreader = bufferedreader1;
        if (true) goto _L5; else goto _L4
_L4:
        ioexception;
        bufferedreader1 = bufferedreader;
        bufferedwriter = null;
          goto _L6
        ioexception;
        bufferedwriter = bufferedwriter1;
        bufferedreader1 = bufferedreader;
          goto _L6
    }

    Handler()
    {
    }
}
