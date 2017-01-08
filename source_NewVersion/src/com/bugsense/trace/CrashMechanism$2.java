// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;


// Referenced classes of package com.bugsense.trace:
//            G, CrashMechanism

final class val.type
    implements Runnable
{

    final String val$jsonCrashData;
    final int val$type;

    public final void run()
    {
        if (!G.sendOnlyWiFi) goto _L2; else goto _L1
_L1:
        if (G.IS_WIFI_ON != 1) goto _L4; else goto _L3
_L3:
        if (!CrashMechanism.access$000(val$jsonCrashData, val$type))
        {
            CrashMechanism.saveCrash(val$jsonCrashData, val$type);
        }
_L6:
        return;
_L4:
        CrashMechanism.saveCrash(val$jsonCrashData, val$type);
        return;
_L2:
        if (!CrashMechanism.access$000(val$jsonCrashData, val$type))
        {
            CrashMechanism.saveCrash(val$jsonCrashData, val$type);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    ()
    {
        val$jsonCrashData = s;
        val$type = i;
        super();
    }
}
