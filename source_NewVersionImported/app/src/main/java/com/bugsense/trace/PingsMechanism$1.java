// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.File;

// Referenced classes of package com.bugsense.trace:
//            G, BugSenseHandler, Utils, PingsMechanism

class this._cls0
    implements Runnable
{

    final PingsMechanism this$0;

    public void run()
    {
        int i = 2;
        File file = new File(G.FILES_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        class _cls1
            implements FilenameFilter
        {

            final PingsMechanism._cls1 this$1;

            public boolean accept(File file1, String s)
            {
                return s.startsWith("Ping_");
            }

            _cls1()
            {
                this$1 = PingsMechanism._cls1.this;
                super();
            }
        }

        _cls1 _lcls1 = new _cls1();
        class _cls2
            implements FilenameFilter
        {

            final PingsMechanism._cls1 this$1;

            public boolean accept(File file1, String s)
            {
                return s.startsWith("Gnip_");
            }

            _cls2()
            {
                this$1 = PingsMechanism._cls1.this;
                super();
            }
        }

        _cls2 _lcls2 = new _cls2();
        class _cls3
            implements FilenameFilter
        {

            final PingsMechanism._cls1 this$1;

            public boolean accept(File file1, String s)
            {
                return s.startsWith("Perf_");
            }

            _cls3()
            {
                this$1 = PingsMechanism._cls1.this;
                super();
            }
        }

        _cls3 _lcls3 = new _cls3();
        String as[] = file.list(_lcls1);
        String as1[] = file.list(_lcls2);
        String as2[] = file.list(_lcls3);
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            String _tmp = G.TAG;
            (new StringBuilder("Ping List has: ")).append(as.length).append(" items");
            String _tmp1 = G.TAG;
            (new StringBuilder("Gnip List has: ")).append(as1.length).append(" items");
            String _tmp2 = G.TAG;
            (new StringBuilder("Perf List has: ")).append(as2.length).append(" items");
        }
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        if (i > as.length)
        {
            j = as.length;
        } else
        {
            j = i;
        }
        for (k = 0; k < j && PingsMechanism.transmitPingSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[k]).toString())); k++) { }
        if (k > 0)
        {
            int i2 = 0;
            do
            {
                if (i2 >= as.length)
                {
                    break;
                }
                try
                {
                    (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[i2]).toString())).delete();
                }
                catch (Exception exception2)
                {
                    String _tmp3 = G.TAG;
                    (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as[i2]);
                }
                i2++;
            } while (true);
        }
        if (i > as1.length)
        {
            i = as1.length;
        }
        for (l = 0; l < i && PingsMechanism.transmitPingSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[l]).toString())); l++) { }
        if (l > 0)
        {
            int l1 = 0;
            do
            {
                if (l1 >= as1.length)
                {
                    break;
                }
                try
                {
                    (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as1[l1]).toString())).delete();
                }
                catch (Exception exception1)
                {
                    String _tmp4 = G.TAG;
                    (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as1[l1]);
                }
                l1++;
            } while (true);
        }
        if (10 > as2.length)
        {
            i1 = as2.length;
        } else
        {
            i1 = 10;
        }
        for (j1 = 0; j1 < i1 && PingsMechanism.transmitPingSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as2[j1]).toString())); j1++) { }
        k1 = 0;
        if (j1 > 0)
        {
            do
            {
                if (k1 >= as2.length)
                {
                    break;
                }
                try
                {
                    (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as2[k1]).toString())).delete();
                }
                catch (Exception exception)
                {
                    String _tmp5 = G.TAG;
                    (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as2[k1]);
                }
                k1++;
            } while (true);
        }
    }

    _cls3()
    {
        this$0 = PingsMechanism.this;
        super();
    }
}
