// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos.d:
//            fq

final class fu
    implements f
{

    final fq a;

    fu(fq fq1)
    {
        a = fq1;
        super();
    }

    public final void a(Object obj)
    {
        fq.j(a).setText(obj.toString());
    }
}
