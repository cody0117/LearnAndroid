// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;

// Referenced classes of package com.google.android.gms.tagmanager:
//            bd

final class bc
{

    static void a(Context context, String s, String s1, String s2)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(s, 0).edit();
        editor.putString(s1, s2);
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            editor.apply();
            return;
        } else
        {
            (new Thread(new bd(editor))).start();
            return;
        }
    }
}
