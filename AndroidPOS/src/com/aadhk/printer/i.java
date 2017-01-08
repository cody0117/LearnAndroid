// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.IOException;

// Referenced classes of package com.aadhk.printer:
//            h, PrinterSetting, c, l, 
//            d, k, b, n

public final class i
{

    public static void a(Context context, PrinterSetting printersetting)
    {
        l l1;
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
        l1 = new l(context);
        l1.a(printersetting.getUsbName());
        l1.a();
        return;
        Exception exception;
        exception;
        l1.a();
        throw exception;
        d d1;
        if (printersetting.getConnType() != 1)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        d1 = new d();
        d1.a(printersetting.getBtName());
        d1.a();
        return;
        Exception exception1;
        exception1;
        d1.a();
        throw exception1;
        k k1 = new k();
        k1.a(printersetting.getIp(), printersetting.getPort());
        try
        {
            k1.a();
            return;
        }
        catch (h h2)
        {
            h2.printStackTrace();
        }
        return;
        Exception exception2;
        exception2;
        try
        {
            k1.a();
        }
        catch (h h1)
        {
            h1.printStackTrace();
        }
        throw exception2;
    }

    public static void a(Context context, PrinterSetting printersetting, Bitmap bitmap)
    {
        if (printersetting == null) goto _L2; else goto _L1
_L1:
        int j;
        int i1;
        j = printersetting.getConnType();
        i1 = 0;
        if (j != 3) goto _L4; else goto _L3
_L3:
        if (i1 < printersetting.getPrintNum()) goto _L5; else goto _L2
_L2:
        return;
_L5:
        boolean flag = TextUtils.isEmpty(printersetting.getCommDrawer());
        String s = null;
        if (!flag)
        {
            boolean flag2 = printersetting.isOpenDrawer();
            s = null;
            if (flag2)
            {
                s = printersetting.getCommDrawer();
            }
        }
        boolean flag1 = c.a(bitmap, printersetting.getHostingIp(), printersetting.getServiceName(), s);
        (new StringBuilder("print result:")).append(flag1);
        if (!flag1)
        {
            throw new h("printer adapter server error");
        }
        i1++;
        if (true) goto _L3; else goto _L4
_L4:
        l l1;
        if (printersetting.getConnType() != 2)
        {
            break MISSING_BLOCK_LABEL_209;
        }
        l1 = new l(context);
        byte abyte0[];
        l1.a(printersetting.getUsbName());
        abyte0 = n.a(com.aadhk.printer.b.a(bitmap), printersetting);
_L6:
        int j1 = printersetting.getPrintNum();
        if (i1 >= j1)
        {
            l1.a();
            return;
        }
        l1.a(abyte0);
        i1++;
          goto _L6
        IOException ioexception;
        ioexception;
        throw new h("printer adapter error", ioexception);
        Exception exception;
        exception;
        l1.a();
        throw exception;
        d d1;
        if (printersetting.getConnType() != 1)
        {
            break MISSING_BLOCK_LABEL_318;
        }
        d1 = new d();
        (new StringBuilder("=====>btName:")).append(printersetting.getBtName());
        byte abyte1[];
        d1.a(printersetting.getBtName());
        abyte1 = n.a(com.aadhk.printer.b.a(bitmap), printersetting);
_L7:
        int k1 = printersetting.getPrintNum();
        if (i1 >= k1)
        {
            d1.a();
            return;
        }
        d1.a(abyte1);
        i1++;
          goto _L7
        IOException ioexception1;
        ioexception1;
        throw new h("printer bluetooth error", ioexception1);
        Exception exception1;
        exception1;
        d1.a();
        throw exception1;
        k k2 = new k();
        byte abyte2[];
        k2.a(printersetting.getIp(), printersetting.getPort());
        abyte2 = n.a(com.aadhk.printer.b.a(bitmap), printersetting);
_L8:
        int i2 = printersetting.getPrintNum();
        if (i1 >= i2)
        {
            k2.a();
            return;
        }
        k2.a(abyte2);
        i1++;
          goto _L8
        IOException ioexception2;
        ioexception2;
        throw new h("printer adapter error", ioexception2);
        Exception exception2;
        exception2;
        k2.a();
        throw exception2;
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
        byte abyte2[];
        l l1;
        abyte2 = n.a(printersetting.getCommDrawer());
        l1 = new l(context);
        l1.a(printersetting.getUsbName());
        l1.a(abyte2);
        l1.a();
_L2:
        return;
        Exception exception2;
        exception2;
        l1.a();
        throw exception2;
_L4:
        byte abyte1[];
        k k1;
        if (printersetting.getConnType() != 0)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        abyte1 = n.a(printersetting.getCommDrawer());
        k1 = new k();
        k1.a(printersetting.getIp(), printersetting.getPort());
        k1.a(abyte1);
        k1.a();
        return;
        Exception exception1;
        exception1;
        k1.a();
        throw exception1;
        byte abyte0[];
        d d1;
        if (printersetting.getConnType() != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        abyte0 = n.a(printersetting.getCommDrawer());
        d1 = new d();
        d1.a(printersetting.getBtName());
        d1.a(abyte0);
        d1.a();
        return;
        Exception exception;
        exception;
        d1.a();
        throw exception;
        if (printersetting.getConnType() != 3) goto _L2; else goto _L5
_L5:
        boolean flag = c.a(printersetting.getHostingIp(), printersetting.getServiceName(), printersetting.getCommDrawer());
        (new StringBuilder("print result:")).append(flag);
        if (!flag)
        {
            throw new h("printer adapter error");
        }
        if (true) goto _L2; else goto _L6
_L6:
    }
}
