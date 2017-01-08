// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Base64;
import com.aadhk.printer.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.t;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.f.bw;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class u
{

    private Context a;
    private r b;
    private t c;
    private bw d;

    public u(Context context)
    {
        a = context;
        b = new r(context);
        d = new bw(context);
        c = new t(f.a().b());
    }

    public final POSPrinterSetting a()
    {
        return c.c();
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(i);
        } else
        {
            POSPrinterSetting posprintersetting = c.a(i);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", posprintersetting);
            return hashmap;
        }
    }

    public final Map a(int i, String s)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            String s1 = Base64.encodeToString(com.aadhk.product.library.c.f.d((new StringBuilder()).append(com.aadhk.restpos.util.f.b).append("/").append(s).toString()), 0);
            Map map = d.a(s1);
            if ("1".equals((String)map.get("serviceStatus")))
            {
                c.a(i, s);
            }
            return map;
        } else
        {
            c.a(i, s);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(POSPrinterSetting posprintersetting)
    {
        HashMap hashmap;
        String s;
        Map map;
        String s1;
        hashmap = new HashMap();
        s = (new StringBuilder()).append(com.aadhk.restpos.util.f.b).append("/").append(posprintersetting.getLogoName()).toString();
        if (!b.v())
        {
            break MISSING_BLOCK_LABEL_136;
        }
        map = d.a();
        if (!"1".equals((String)map.get("serviceStatus")))
        {
            break MISSING_BLOCK_LABEL_133;
        }
        s1 = (String)map.get("serviceData");
        byte abyte0[] = Base64.decode(s1, 0);
        com.aadhk.printer.b.a(BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length), s);
        map.put("serviceData", s);
        return map;
        Exception exception;
        exception;
        exception.printStackTrace();
        return map;
        hashmap.put("serviceData", s);
        hashmap.put("serviceStatus", "1");
        return hashmap;
    }

    public final List b()
    {
        return c.d();
    }

    public final Map b(int i, String s)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            Map map = d.b();
            if ("1".equals((String)map.get("serviceStatus")))
            {
                c.a(i, s);
            }
            return map;
        } else
        {
            c.a(i, s);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(POSPrinterSetting posprintersetting)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(posprintersetting);
        } else
        {
            c.d(posprintersetting);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map c(POSPrinterSetting posprintersetting)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(posprintersetting);
        } else
        {
            c.b(posprintersetting);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map d(POSPrinterSetting posprintersetting)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(posprintersetting);
        } else
        {
            c.c(posprintersetting);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map e(POSPrinterSetting posprintersetting)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(posprintersetting);
        } else
        {
            c.a(posprintersetting);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
