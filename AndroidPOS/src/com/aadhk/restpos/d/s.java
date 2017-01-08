// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.k;
import com.aadhk.restpos.DatabaseActivity;
import com.aadhk.restpos.c.d;
import java.io.File;
import java.util.Arrays;

// Referenced classes of package com.aadhk.restpos.d:
//            q, t, u

final class s
    implements f
{

    final q a;

    s(q q1)
    {
        a = q1;
        super();
    }

    public final void a(Object obj)
    {
        q.b(a, ((Integer)obj).intValue());
        if (com.aadhk.restpos.d.q.d(a) == 0)
        {
            File afile[] = (new File(com.aadhk.restpos.util.f.e)).listFiles();
            String as[] = new String[afile.length];
            Arrays.sort(afile);
            for (int i = 0; i < afile.length; i++)
            {
                as[i] = afile[i].getName();
            }

            if (as.length > 0)
            {
                k k1 = new k(q.a(a), as, -1 + as.length);
                k1.setTitle(q.a(a).getString(0x7f080067));
                k1.a(new t(this, as));
                k1.show();
                return;
            } else
            {
                Toast.makeText(q.a(a), q.a(a).getString(0x7f080068), 1).show();
                return;
            }
        } else
        {
            d d1 = new d(q.a(a));
            d1.setTitle(q.a(a).getString(0x7f08007d));
            d1.a(new u(this, d1));
            d1.show();
            return;
        }
    }
}
