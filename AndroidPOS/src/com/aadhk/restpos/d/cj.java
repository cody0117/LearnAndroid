// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.c.f;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            cf, cx

final class cj
    implements f
{

    final cf a;

    cj(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < cf.a(a).size()) 
        {
            ModifierGroup modifiergroup = (ModifierGroup)cf.a(a).get(i);
            if (i == 0)
            {
                stringbuilder.append(modifiergroup.getId());
            } else
            {
                stringbuilder.append((new StringBuilder(",")).append(modifiergroup.getId()).toString());
            }
            i++;
        }
        (new d(new cx(a, stringbuilder), a.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
