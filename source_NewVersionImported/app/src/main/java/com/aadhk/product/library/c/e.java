// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.android.AndroidAuthSession;
import com.dropbox.client2.session.AppKeyPair;

public final class e
{

    private final Context a;
    private final String b;
    private final String c;

    public e(Context context, String s, String s1)
    {
        a = context;
        b = s;
        c = s1;
    }

    public final DropboxAPI a()
    {
        AndroidAuthSession androidauthsession = new AndroidAuthSession(new AppKeyPair(b, c));
        String s = a.getSharedPreferences("prefs", 0).getString("ACCESS_SECRET", null);
        if (s != null && s.length() > 0)
        {
            androidauthsession.setOAuth2AccessToken(s);
        }
        return new DropboxAPI(androidauthsession);
    }

    public final void a(String s)
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("prefs", 0).edit();
        editor.putString("ACCESS_SECRET", s);
        editor.commit();
    }

    public final void b()
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("prefs", 0).edit();
        editor.clear();
        editor.commit();
    }
}
