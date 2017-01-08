// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.k;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.f.d;
import java.io.File;
import java.util.Arrays;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity, f, g

final class e
    implements f
{

    final DatabaseActivity a;

    e(DatabaseActivity databaseactivity)
    {
        a = databaseactivity;
        super();
    }

    public final void a(Object obj)
    {
        DatabaseActivity.b(a, ((Integer)obj).intValue());
        if (DatabaseActivity.c(a) == 0)
        {
            File afile[] = (new File(d.e)).listFiles();
            String as[] = new String[afile.length];
            Arrays.sort(afile);
            for (int i = 0; i < afile.length; i++)
            {
                as[i] = afile[i].getName();
            }

            if (as.length > 0)
            {
                k k1 = new k(a, as, -1 + as.length);
                k1.setTitle(0x7f090037);
                k1.a(new com.aadhk.restpos.f(this, as));
                k1.show();
                return;
            } else
            {
                Toast.makeText(a, 0x7f090038, 1).show();
                return;
            }
        } else
        {
            g g1 = new g(a);
            g1.setTitle(0x7f09004d);
            g1.a(new com.aadhk.restpos.g(this, g1));
            g1.show();
            return;
        }
    }
}
