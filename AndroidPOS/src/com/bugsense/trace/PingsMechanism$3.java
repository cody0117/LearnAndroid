// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;


// Referenced classes of package com.bugsense.trace:
//            Utils, PingsMechanism

final class val.tag
    implements Runnable
{

    final String val$tag;
    final int val$type;

    public final void run()
    {
        if (val$type == 2 || val$type == 3)
        {
            PingsMechanism.savePing(val$type, val$tag, Utils.getCPU(), Utils.getMem());
            return;
        } else
        {
            PingsMechanism.savePing(val$type, null, null, null);
            return;
        }
    }

    ()
    {
        val$type = i;
        val$tag = s;
        super();
    }
}
