// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.File;

// Referenced classes of package com.bugsense.trace:
//            G

final class 
    implements Runnable
{

    public final void run()
    {
        File file = new File((new StringBuilder()).append(G.FILES_PATH).append("/crashCounter").toString());
        if (file.exists())
        {
            file.delete();
        }
    }

    ()
    {
    }
}
