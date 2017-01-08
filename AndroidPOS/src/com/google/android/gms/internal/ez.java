// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            mg, br, lq, lf, 
//            fa, fb

public final class ez
{

    private final mg a;
    private final Map b;
    private final Context c;

    public ez(mg mg1, Map map)
    {
        a = mg1;
        b = map;
        c = mg1.k();
    }

    static Context a(ez ez1)
    {
        return ez1.c;
    }

    static mg b(ez ez1)
    {
        return ez1.a;
    }

    public final void a()
    {
        if ((new br(c)).c() && !TextUtils.isEmpty((CharSequence)b.get("iurl")))
        {
            String s = (String)b.get("iurl");
            if (!URLUtil.isValidUrl(s))
            {
                (new StringBuilder("Invalid image url:")).append(s);
                return;
            }
            String s1 = Uri.parse(s).getLastPathSegment();
            if (lq.c(s1))
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(c);
                builder.setTitle(lf.a(com.google.android.gms.R.string.store_picture_title, "Save image"));
                builder.setMessage(lf.a(com.google.android.gms.R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
                builder.setPositiveButton(lf.a(com.google.android.gms.R.string.accept, "Accept"), new fa(this, s, s1));
                builder.setNegativeButton(lf.a(com.google.android.gms.R.string.decline, "Decline"), new fb(this));
                builder.create().show();
                return;
            }
        }
    }
}
