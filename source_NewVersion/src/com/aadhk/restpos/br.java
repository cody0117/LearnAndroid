// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.c.l;

// Referenced classes of package com.aadhk.restpos:
//            ReceiptListActivity

final class br
    implements l
{

    final ReceiptListActivity a;

    br(ReceiptListActivity receiptlistactivity)
    {
        a = receiptlistactivity;
        super();
    }

    public final void a(String s, String s1)
    {
        ReceiptListActivity.a(a, s);
        ReceiptListActivity.b(a, s1);
        ReceiptListActivity.a(a);
        a.a();
    }
}
