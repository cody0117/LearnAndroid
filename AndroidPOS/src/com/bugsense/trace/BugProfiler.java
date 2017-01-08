// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;


// Referenced classes of package com.bugsense.trace:
//            G

class BugProfiler
{

    private static final int MAX_LIFETIME = 60;
    private static int currentStep = 2;
    private static String currentTag = "";
    private static BugProfiler instance = null;
    private static boolean running = false;
    private static int runningFor = 0;
    private final StringBuilder trackCpu = new StringBuilder();
    private final StringBuilder trackMem = new StringBuilder();

    BugProfiler()
    {
    }

    protected static BugProfiler getProfiler()
    {
        if (instance == null)
        {
            instance = new BugProfiler();
        }
        return instance;
    }

    private void startThread()
    {
        running = true;
        runningFor = 0;
        (new Thread(new _cls1())).start();
    }

    protected void startProfiling(String s, int i)
    {
        if (s.equals(currentTag) && running)
        {
            String _tmp = G.TAG;
            (new StringBuilder("Profiler with name ")).append(s).append(" is already running!");
            return;
        }
        currentTag = s;
        String _tmp1 = G.TAG;
        (new StringBuilder("Profiling tag set to ")).append(s);
        if (i <= 0 || i > 60)
        {
            String _tmp2 = G.TAG;
            i = 2;
        }
        currentStep = i;
        String _tmp3 = G.TAG;
        (new StringBuilder("Profiling step set to ")).append(String.valueOf(currentStep)).append(" seconds");
        if (trackCpu != null)
        {
            trackCpu.setLength(0);
        }
        if (trackMem != null)
        {
            trackMem.setLength(0);
        }
        startThread();
    }

    protected void stopProfiling(String s)
    {
        if (running && s.equals(currentTag))
        {
            String _tmp = G.TAG;
            (new StringBuilder("Stopping profiler with tag ")).append(s);
            running = false;
        }
        StringBuilder _tmp1 = trackCpu;
        StringBuilder _tmp2 = trackMem;
    }








/*
    static int access$412(int i)
    {
        int j = i + runningFor;
        runningFor = j;
        return j;
    }

*/


    private class _cls1
        implements Runnable
    {

        final BugProfiler this$0;

        public void run()
        {
            do
            {
                if (!BugProfiler.running)
                {
                    break;
                }
                trackCpu.append((new StringBuilder()).append(Utils.getCPU()).append("|").toString());
                trackMem.append((new StringBuilder()).append(Utils.getMem()).append("|").toString());
                try
                {
                    Thread.sleep(1000 * BugProfiler.currentStep);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
                int j = this + StringBuilder;
                if (BugProfiler.runningFor > 60)
                {
                    stopProfiling(BugProfiler.currentTag);
                    String _tmp = G.TAG;
                }
            } while (true);
        }

        _cls1()
        {
            this$0 = BugProfiler.this;
            super();
        }
    }

}
