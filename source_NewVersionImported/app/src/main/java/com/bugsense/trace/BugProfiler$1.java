// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;


// Referenced classes of package com.bugsense.trace:
//            BugProfiler, Utils, G

class this._cls0
    implements Runnable
{

    final BugProfiler this$0;

    public void run()
    {
        do
        {
            if (!BugProfiler.access$000())
            {
                break;
            }
            BugProfiler.access$100(BugProfiler.this).append((new StringBuilder()).append(Utils.getCPU()).append("|").toString());
            BugProfiler.access$200(BugProfiler.this).append((new StringBuilder()).append(Utils.getMem()).append("|").toString());
            try
            {
                Thread.sleep(1000 * BugProfiler.access$300());
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            int _tmp = BugProfiler.access$412(BugProfiler.access$300());
            if (BugProfiler.access$400() > 60)
            {
                stopProfiling(BugProfiler.access$500());
                String _tmp1 = G.TAG;
            }
        } while (true);
    }

    ()
    {
        this$0 = BugProfiler.this;
        super();
    }
}
