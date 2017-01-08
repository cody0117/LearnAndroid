// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.c:
//            az

final class bb
    implements f
{

    final az a;

    bb(az az1)
    {
        a = az1;
        super();
    }

    public final void a(Object obj)
    {
        String s = obj.toString();
        az.b(a).setText(i.d(s, az.a(a)));
        az.a(a, s);
    }
}
