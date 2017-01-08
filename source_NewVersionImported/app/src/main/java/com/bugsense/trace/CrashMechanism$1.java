// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.File;

// Referenced classes of package com.bugsense.trace:
//            G, BugSenseHandler, Utils, CrashMechanism

class this._cls0
    implements Runnable
{

    final CrashMechanism this$0;

    public void run()
    {
        int i = 5;
        File file = new File(G.FILES_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        class _cls1
            implements FilenameFilter
        {

            final CrashMechanism._cls1 this$1;

            public boolean accept(File file1, String s)
            {
                return s.startsWith("Crash_");
            }

            _cls1()
            {
                this$1 = CrashMechanism._cls1.this;
                super();
            }
        }

        _cls1 _lcls1 = new _cls1();
        class _cls2
            implements FilenameFilter
        {

            final CrashMechanism._cls1 this$1;

            public boolean accept(File file1, String s)
            {
                return s.startsWith("Exception_");
            }

            _cls2()
            {
                this$1 = CrashMechanism._cls1.this;
                super();
            }
        }

        _cls2 _lcls2 = new _cls2();
        String as[] = file.list(_lcls1);
        String as1[] = file.list(_lcls2);
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            String _tmp = G.TAG;
            (new StringBuilder("Crash List has: ")).append(as.length).append(" items");
            String _tmp1 = G.TAG;
            (new StringBuilder("HandledEx List has: ")).append(as1.length).append(" items");
        }
        if (i > as.length)
        {
            i = as.length;
        }
        int j;
        for (j = 0; j < i && CrashMechanism.access$000(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[j]).toString()), 1); j++) { }
        if (j > 0)
        {
            int j1 = 0;
            do
            {
                if (j1 >= as.length)
                {
                    break;
                }
                try
                {
                    (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[j1]).toString())).delete();
                }
                catch (Exception exception1)
                {
                    String _tmp2 = G.TAG;
                    (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as[j1]);
                }
                j1++;
            } while (true);
        }
        int k;
        int l;
        int i1;
        if (8 > as1.length)
        {
            k = as1.length;
        } else
        {
            k = 8;
        }
        for (l = 0; l < k && CrashMechanism.access$000(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[l]).toString()), 0); l++) { }
        i1 = 0;
        if (l > 0)
        {
            do
            {
                if (i1 >= as1.length)
                {
                    break;
                }
                try
                {
                    (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[i1]).toString())).delete();
                }
                catch (Exception exception)
                {
                    String _tmp3 = G.TAG;
                    (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as1[i1]);
                }
                i1++;
            } while (true);
        }
    }

    _cls2()
    {
        this$0 = CrashMechanism.this;
        super();
    }
}
