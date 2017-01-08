// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;

// Referenced classes of package com.soundcloud.android.crop:
//            aa, CropImageActivity

public final class a
{

    private Intent a;

    public a(Uri uri)
    {
        a = new Intent();
        a.setData(uri);
    }

    public static Throwable a(Intent intent)
    {
        return (Throwable)intent.getSerializableExtra("error");
    }

    public static void b(Activity activity)
    {
        Intent intent = (new Intent("android.intent.action.GET_CONTENT")).setType("image/*");
        try
        {
            activity.startActivityForResult(intent, 9162);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Toast.makeText(activity, aa.a, 0).show();
        }
    }

    public final a a(int i, int j)
    {
        a.putExtra("max_x", i);
        a.putExtra("max_y", j);
        return this;
    }

    public final a a(Uri uri)
    {
        a.putExtra("output", uri);
        return this;
    }

    public final void a(Activity activity)
    {
        a.setClass(activity, com/soundcloud/android/crop/CropImageActivity);
        activity.startActivityForResult(a, 6709);
    }
}
