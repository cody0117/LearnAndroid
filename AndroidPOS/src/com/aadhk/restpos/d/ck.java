// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.c.f;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            cf, da

final class ck
    implements f
{

    final cf a;

    ck(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < com.aadhk.restpos.d.cf.d(a).size()) 
        {
            KitchenNote kitchennote = (KitchenNote)com.aadhk.restpos.d.cf.d(a).get(i);
            if (i == 0)
            {
                stringbuilder.append(kitchennote.getId());
            } else
            {
                stringbuilder.append((new StringBuilder(",")).append(kitchennote.getId()).toString());
            }
            i++;
        }
        (new d(new da(a, stringbuilder), a.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
