// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.bean.Note;

// Referenced classes of package com.aadhk.restpos:
//            KitchenNoteActivity

final class ab
    implements f
{

    final KitchenNoteActivity a;

    ab(KitchenNoteActivity kitchennoteactivity)
    {
        a = kitchennoteactivity;
        super();
    }

    public final void a(Object obj)
    {
        Note note = (Note)obj;
        KitchenNoteActivity.a(a).a(note);
        a.a();
    }
}
