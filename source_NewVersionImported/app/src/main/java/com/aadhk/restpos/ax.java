// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.bean.Note;

// Referenced classes of package com.aadhk.restpos:
//            MgrVoidReasonActivity

final class ax
    implements f
{

    final MgrVoidReasonActivity a;

    ax(MgrVoidReasonActivity mgrvoidreasonactivity)
    {
        a = mgrvoidreasonactivity;
        super();
    }

    public final void a(Object obj)
    {
        Note note = (Note)obj;
        MgrVoidReasonActivity.a(a).b(note);
        a.a();
    }
}
