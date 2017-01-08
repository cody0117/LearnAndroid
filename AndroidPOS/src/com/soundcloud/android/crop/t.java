// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.soundcloud.android.crop:
//            v

abstract class t extends Activity
{

    private final ArrayList a = new ArrayList();

    t()
    {
    }

    public void a(v v1)
    {
        a.remove(v1);
    }

    public void b(v v1)
    {
        if (a.contains(v1))
        {
            return;
        } else
        {
            a.add(v1);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            iterator.next();
        } while (true);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((v)iterator.next()).a();
        } while (true);
    }

    protected void onStart()
    {
        super.onStart();
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((v)iterator.next()).c();
        } while (true);
    }

    protected void onStop()
    {
        super.onStop();
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((v)iterator.next()).b();
        } while (true);
    }
}
