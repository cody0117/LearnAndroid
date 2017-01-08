// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.j;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            MgrCategoryActivity

final class ao
    implements c
{

    final MgrCategoryActivity a;
    private Map b;
    private Map c;

    public ao(MgrCategoryActivity mgrcategoryactivity, Map map)
    {
        a = mgrcategoryactivity;
        super();
        c = map;
    }

    public final void a()
    {
        b = MgrCategoryActivity.b(a).a(c);
    }

    public final void b()
    {
        String s;
label0:
        {
            s = (String)b.get("serviceStatus");
            if (!"1".equals(s))
            {
                if (!"10".equals(s) && !"11".equals(s))
                {
                    break label0;
                }
                q.a(a);
                Toast.makeText(a, 0x7f080246, 1).show();
            }
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a, 0x7f080247, 1).show();
            return;
        }
    }
}
