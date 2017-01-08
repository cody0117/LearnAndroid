// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.database.Cursor;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.soundcloud.android.crop:
//            l, t

final class k
{

    public static int a(File file)
    {
        if (file == null)
        {
            return 0;
        }
        int i;
        try
        {
            i = (new ExifInterface(file.getAbsolutePath())).getAttributeInt("Orientation", 0);
        }
        catch (IOException ioexception)
        {
            return 0;
        }
        switch (i)
        {
        case 4: // '\004'
        case 5: // '\005'
        case 7: // '\007'
        default:
            return 0;

        case 3: // '\003'
            return 180;

        case 6: // '\006'
            return 90;

        case 8: // '\b'
            return 270;
        }
    }

    public static File a(ContentResolver contentresolver, Uri uri)
    {
        if (uri != null) goto _L2; else goto _L1
_L1:
        File file = null;
_L13:
        return file;
_L2:
        if ("file".equals(uri.getScheme()))
        {
            return new File(uri.getPath());
        }
        if (!"content".equals(uri.getScheme())) goto _L4; else goto _L3
_L3:
        String as[] = {
            "_data", "_display_name"
        };
        Cursor cursor2 = contentresolver.query(uri, as, null, null, null);
        Cursor cursor = cursor2;
        if (cursor == null) goto _L6; else goto _L5
_L5:
        if (!cursor.moveToFirst()) goto _L6; else goto _L7
_L7:
        if (!uri.toString().startsWith("content://com.google.android.gallery3d")) goto _L9; else goto _L8
_L8:
        int j = cursor.getColumnIndex("_display_name");
_L14:
        if (j == -1) goto _L6; else goto _L10
_L10:
        String s = cursor.getString(j);
        if (TextUtils.isEmpty(s)) goto _L6; else goto _L11
_L11:
        file = new File(s);
        if (cursor == null) goto _L13; else goto _L12
_L12:
        cursor.close();
        return file;
_L9:
        int i = cursor.getColumnIndex("_data");
        j = i;
          goto _L14
        SecurityException securityexception;
        securityexception;
        Cursor cursor1 = null;
_L17:
        if (cursor1 != null)
        {
            cursor1.close();
        }
_L4:
        return null;
        Exception exception;
        exception;
        cursor = null;
_L15:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L6:
        if (cursor != null)
        {
            cursor.close();
        }
          goto _L4
        exception;
          goto _L15
        SecurityException securityexception1;
        securityexception1;
        cursor1 = cursor;
        if (true) goto _L17; else goto _L16
_L16:
    }

    public static void a(t t, String s, Runnable runnable, Handler handler)
    {
        (new Thread(new l(t, runnable, ProgressDialog.show(t, null, s, true, false), handler))).start();
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public static boolean a(File file, File file1)
    {
        if (file == null || file1 == null)
        {
            return false;
        }
        try
        {
            ExifInterface exifinterface = new ExifInterface(file.getAbsolutePath());
            ExifInterface exifinterface1 = new ExifInterface(file1.getAbsolutePath());
            exifinterface1.setAttribute("Orientation", exifinterface.getAttribute("Orientation"));
            exifinterface1.saveAttributes();
        }
        catch (IOException ioexception)
        {
            return false;
        }
        return true;
    }
}
