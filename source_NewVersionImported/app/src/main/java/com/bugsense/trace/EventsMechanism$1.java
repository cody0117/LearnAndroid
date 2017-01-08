// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.File;

// Referenced classes of package com.bugsense.trace:
//            G, BugSenseHandler, Utils, EventsMechanism

class this._cls0
    implements Runnable
{

    final EventsMechanism this$0;

    public void run()
    {
        int i = 12;
        File file = new File(G.FILES_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        class _cls1
            implements FilenameFilter
        {

            final EventsMechanism._cls1 this$1;

            public boolean accept(File file1, String s)
            {
                return s.startsWith("Event_");
            }

            _cls1()
            {
                this$1 = EventsMechanism._cls1.this;
                super();
            }
        }

        String as[] = file.list(new _cls1());
        if (BugSenseHandler.I_WANT_TO_DEBUG)
        {
            String _tmp = G.TAG;
            (new StringBuilder("Events List has: ")).append(as.length).append(" items");
        }
        if (i > as.length)
        {
            i = as.length;
        }
        int j;
        for (j = 0; j < i && EventsMechanism.transmitEventSync(Utils.readFile((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[j]).toString())); j++) { }
        if (j > 0)
        {
            int k = 0;
            do
            {
                if (k >= as.length)
                {
                    break;
                }
                try
                {
                    (new File((new StringBuilder()).append(G.FILES_PATH).append("/").append(as[k]).toString())).delete();
                }
                catch (Exception exception)
                {
                    String _tmp1 = G.TAG;
                    (new StringBuilder("Error deleting trace file: ")).append(G.FILES_PATH).append("/").append(as[k]);
                }
                k++;
            } while (true);
        }
    }

    _cls1()
    {
        this$0 = EventsMechanism.this;
        super();
    }
}
