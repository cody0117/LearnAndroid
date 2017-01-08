// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.IOException;

// Referenced classes of package com.aadhk.printer:
//            e, PrinterSetting, c, i, 
//            h, b, k

public final class f
{

    public static void a(Context context, PrinterSetting printersetting)
    {
        i j;
label0:
        {
            if (printersetting != null)
            {
                if (printersetting.getConnType() != 3)
                {
                    break label0;
                }
                c.a(printersetting.getHostingIp(), printersetting.getServiceName());
            }
            return;
        }
        if (printersetting.getConnType() != 2)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        j = new i(context);
        j.a(printersetting.getUsbName());
        j.a();
        return;
        Exception exception;
        exception;
        j.a();
        throw exception;
        h h1 = new h();
        h1.a(printersetting.getIp(), printersetting.getPort());
        try
        {
            h1.a();
            return;
        }
        catch (e e2)
        {
            e2.printStackTrace();
        }
        return;
        Exception exception1;
        exception1;
        try
        {
            h1.a();
        }
        catch (e e1)
        {
            e1.printStackTrace();
        }
        throw exception1;
    }

    public static void a(Context context, PrinterSetting printersetting, Bitmap bitmap)
    {
        if (printersetting == null) goto _L2; else goto _L1
_L1:
        int j;
        int l;
        j = printersetting.getConnType();
        l = 0;
        if (j != 3) goto _L4; else goto _L3
_L3:
        if (l < printersetting.getPrintNum()) goto _L5; else goto _L2
_L2:
        return;
_L5:
        String s = printersetting.getHostingIp();
        String s1 = printersetting.getServiceName();
        printersetting.getCommDrawer();
        boolean flag = c.a(bitmap, s, s1);
        (new StringBuilder("print result:")).append(flag);
        if (!flag)
        {
            throw new e("printer adapter server error");
        }
        l++;
        if (true) goto _L3; else goto _L4
_L4:
        i i1;
        if (printersetting.getConnType() != 2)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        i1 = new i(context);
        byte abyte0[];
        i1.a(printersetting.getUsbName());
        abyte0 = k.a(com.aadhk.printer.b.a(bitmap), printersetting);
_L6:
        int j1 = printersetting.getPrintNum();
        if (l >= j1)
        {
            i1.a();
            return;
        }
        i1.a(abyte0);
        l++;
          goto _L6
        IOException ioexception;
        ioexception;
        throw new e("printer adapter error", ioexception);
        Exception exception;
        exception;
        i1.a();
        throw exception;
        h h1 = new h();
        byte abyte1[];
        h1.a(printersetting.getIp(), printersetting.getPort());
        abyte1 = k.a(com.aadhk.printer.b.a(bitmap), printersetting);
_L7:
        int k1 = printersetting.getPrintNum();
        if (l >= k1)
        {
            h1.a();
            return;
        }
        h1.a(abyte1);
        l++;
          goto _L7
        IOException ioexception1;
        ioexception1;
        throw new e("printer adapter error", ioexception1);
        Exception exception1;
        exception1;
        h1.a();
        throw exception1;
    }

    public static String[] a(String s)
    {
        return c.a(s);
    }

    public static void b(Context context, PrinterSetting printersetting)
    {
        if (printersetting == null || TextUtils.isEmpty(printersetting.getCommDrawer())) goto _L2; else goto _L1
_L1:
        (new StringBuilder("printerSetting.getCommDrawer():")).append(printersetting.getCommDrawer());
        if (printersetting.getConnType() != 2) goto _L4; else goto _L3
_L3:
        byte abyte1[];
        i j;
        abyte1 = k.a(printersetting.getCommDrawer());
        j = new i(context);
        j.a(printersetting.getUsbName());
        j.a(abyte1);
        j.a();
_L2:
        return;
        Exception exception1;
        exception1;
        j.a();
        throw exception1;
_L4:
        byte abyte0[];
        h h1;
        if (printersetting.getConnType() != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        abyte0 = k.a(printersetting.getCommDrawer());
        h1 = new h();
        h1.a(printersetting.getIp(), printersetting.getPort());
        h1.a(abyte0);
        h1.a();
        return;
        Exception exception;
        exception;
        h1.a();
        throw exception;
        if (printersetting.getConnType() != 3) goto _L2; else goto _L5
_L5:
        boolean flag = c.a(printersetting.getHostingIp(), printersetting.getServiceName(), printersetting.getCommDrawer());
        (new StringBuilder("print result:")).append(flag);
        if (!flag)
        {
            throw new e("printer adapter error");
        }
        if (true) goto _L2; else goto _L6
_L6:
    }
}
