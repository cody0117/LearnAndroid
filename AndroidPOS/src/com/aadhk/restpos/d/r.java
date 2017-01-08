// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.c.f;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.android.AndroidAuthSession;

// Referenced classes of package com.aadhk.restpos.d:
//            q

final class r
    implements f
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public final void a()
    {
        ((AndroidAuthSession)q.b(a).getSession()).startOAuth2Authentication(q.a(a));
    }
}
