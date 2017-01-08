// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.c.i;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.android.AndroidAuthSession;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity

final class d
    implements i
{

    final DatabaseActivity a;

    d(DatabaseActivity databaseactivity)
    {
        a = databaseactivity;
        super();
    }

    public final void a()
    {
        ((AndroidAuthSession)DatabaseActivity.a(a).getSession()).startOAuth2Authentication(a);
    }
}
