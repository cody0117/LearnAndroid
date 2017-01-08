// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Environment;
import android.util.Base64;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.f.l;
import com.aadhk.restpos.util.q;
import java.io.File;
import java.io.IOException;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            ServerActivity, POSApp

final class da
    implements c
{

    final ServerActivity a;
    private Map b;

    da(ServerActivity serveractivity)
    {
        a = serveractivity;
        super();
    }

    public final void a()
    {
        String s = a.getDatabasePath("restpos.db").getAbsolutePath();
        String s1 = (new StringBuilder()).append(f.a()).append("_restpos.db").toString();
        String s2 = (new StringBuilder()).append(com.aadhk.restpos.util.f.e).append("/").append(s1).toString();
        String s3;
        String s4;
        POSPrinterSetting posprintersetting;
        String s5;
        String as[];
        String s6;
        if ((new File(s)).exists())
        {
            if (Environment.getExternalStorageDirectory().canWrite())
            {
                try
                {
                    f.a(s2);
                    f.a(s, s2);
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
            } else
            {
                bo bo1 = new bo(a);
                bo1.a((new StringBuilder()).append(a.getString(0x7f08006a)).append(s2).toString());
                bo1.show();
            }
        }
        s3 = (new StringBuilder()).append(f.a()).append(".db.zip").toString();
        s4 = (new StringBuilder()).append(com.aadhk.restpos.util.f.e).append("/").toString();
        posprintersetting = ((POSApp)a.getApplicationContext()).k();
        s5 = (new StringBuilder()).append(com.aadhk.restpos.util.f.b).append("/").append(posprintersetting.getLogoName()).toString();
        if (posprintersetting != null)
        {
            as = (new String[] {
                s2, s5
            });
        } else
        {
            as = (new String[] {
                s2
            });
        }
        f.a(s3, s4, as);
        s6 = Base64.encodeToString(f.c(s3), 0);
        b = (new l(a)).a(s6);
    }

    public final void b()
    {
label0:
        {
            String s = (String)b.get("serviceStatus");
            if (!"1".equals(s))
            {
                if (!"10".equals(s) && !"11".equals(s))
                {
                    break label0;
                }
                q.a(a);
                Toast.makeText(a, 0x7f080246, 1).show();
            }
            return;
        }
        Toast.makeText(a, 0x7f080247, 1).show();
    }
}
