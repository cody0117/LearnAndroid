// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;


// Referenced classes of package com.bugsense.trace:
//            PingsMechanism

final class val.type
    implements Runnable
{

    final String val$jsonCrashData;
    final int val$type;

    public final void run()
    {
        if (!PingsMechanism.transmitPingSync(val$jsonCrashData))
        {
            PingsMechanism.savePing(val$type, null, null, null);
        }
    }

    ()
    {
        val$jsonCrashData = s;
        val$type = i;
        super();
    }
}
