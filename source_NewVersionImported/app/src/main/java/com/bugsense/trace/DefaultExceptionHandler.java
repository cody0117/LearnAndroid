// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.bugsense.trace:
//            G, Utils, BugSenseHandler, CrashMechanism, 
//            ExceptionCallback

public class DefaultExceptionHandler
    implements Thread.UncaughtExceptionHandler
{

    private Thread.UncaughtExceptionHandler defaultExceptionHandler;

    public DefaultExceptionHandler(Thread.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        defaultExceptionHandler = uncaughtexceptionhandler;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        StringWriter stringwriter;
        long l;
        stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        l = 0L;
        long l1;
        long l2;
        l1 = System.currentTimeMillis();
        l2 = G.TIMESTAMP;
        l = l1 - l2;
_L3:
        HashMap hashmap;
        android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
        Runtime runtime = Runtime.getRuntime();
        hashmap = new HashMap(6);
        hashmap.put("sysMemAvail", String.valueOf((double)memoryinfo.availMem / 1048576D));
        hashmap.put("sysMemLow", String.valueOf(memoryinfo.lowMemory));
        hashmap.put("sysMemThreshold", String.valueOf((double)memoryinfo.threshold / 1048576D));
        hashmap.put("appMemAvail", String.valueOf((double)runtime.freeMemory() / 1048576D));
        hashmap.put("appMemMax", String.valueOf((double)runtime.maxMemory() / 1048576D));
        hashmap.put("appMemTotal", String.valueOf((double)runtime.totalMemory() / 1048576D));
        String s1 = CrashMechanism.createJSONFromCrash(stringwriter.toString(), G.IS_WIFI_ON, G.IS_MOBILENET_ON, G.IS_GPS_ON, G.SCREEN_PROPS, Utils.getTime(), BugSenseHandler.getCrashExtraData(), null, 1, l, hashmap);
        String s = s1;
_L1:
        CrashMechanism.transmitCrashASync(s, 1);
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            G.TAG;
        }
        Utils.saveCrashCounter();
        if (BugSenseHandler.getCallback() != null)
        {
            BugSenseHandler.getCallback().lastBreath(new Exception(throwable));
        }
        Exception exception1;
        try
        {
            Thread.sleep(3000L);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        defaultExceptionHandler.uncaughtException(thread, throwable);
        return;
        exception1;
        exception1.printStackTrace();
        s = "";
          goto _L1
        Exception exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
    }
}
