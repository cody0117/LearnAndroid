// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.c.d;

// Referenced classes of package com.aadhk.restpos:
//            VoidReasonActivity, ek

final class ej
    implements g
{

    final Note a;
    final VoidReasonActivity b;

    ej(VoidReasonActivity voidreasonactivity, Note note)
    {
        b = voidreasonactivity;
        a = note;
        super();
    }

    public final void a()
    {
        d d1 = new d(b);
        String s = b.getString(0x7f0802d8);
        Object aobj[] = new Object[1];
        aobj[0] = a.getName();
        d1.setTitle(String.format(s, aobj));
        d1.a(new ek(this));
        d1.show();
    }
}
