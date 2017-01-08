// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.Note;

// Referenced classes of package com.aadhk.restpos:
//            MgrVoidReasonActivity, az

final class ay
    implements g
{

    final Note a;
    final MgrVoidReasonActivity b;

    ay(MgrVoidReasonActivity mgrvoidreasonactivity, Note note)
    {
        b = mgrvoidreasonactivity;
        a = note;
        super();
    }

    public final void a()
    {
        com.aadhk.restpos.c.g g1 = new com.aadhk.restpos.c.g(b);
        String s = b.b.getString(0x7f09027a);
        Object aobj[] = new Object[1];
        aobj[0] = a.getName();
        g1.setTitle(String.format(s, aobj));
        g1.a(new az(this));
        g1.show();
    }
}
