// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import com.google.android.gms.internal.qc;

final class b extends qc
{

    protected final int a(Object obj)
    {
        Bitmap bitmap = (Bitmap)obj;
        return bitmap.getHeight() * bitmap.getRowBytes();
    }
}
