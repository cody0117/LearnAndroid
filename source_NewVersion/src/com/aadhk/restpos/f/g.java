// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public final class g
{

    public static File a(Bitmap bitmap, String s)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 0, bytearrayoutputstream);
        File file = new File(s);
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        fileoutputstream.write(bytearrayoutputstream.toByteArray());
        fileoutputstream.close();
        bytearrayoutputstream.close();
        return file;
    }
}
