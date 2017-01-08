// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.os.Environment;
import com.aadhk.product.library.c.a;
import java.io.File;

public final class d extends a
{

    public static final String b = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/WnOPOS_ST").toString();
    public static final String c = (new StringBuilder()).append(b).append("/report").toString();
    public static final String d = (new StringBuilder()).append(b).append("/export_import").toString();
    public static final String e = (new StringBuilder()).append(b).append("/db").toString();
    public static final String f = (new StringBuilder()).append(b).append("/logo.png").toString();

}
