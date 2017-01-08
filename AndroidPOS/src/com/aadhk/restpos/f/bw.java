// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.util.i;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.aadhk.restpos.f:
//            ck

public final class bw extends ck
{

    public bw(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        try
        {
            hashmap.put("serviceData", j.c((new StringBuilder()).append(a).append("printerService/downloadLogo.action").toString()));
            hashmap.put("serviceStatus", "1");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }

    public final Map a(int k)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("printerById", Integer.valueOf(k));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("printerService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "logoName"))
        {
            break MISSING_BLOCK_LABEL_151;
        }
        POSPrinterSetting posprintersetting = (POSPrinterSetting)gson.fromJson(s1, com/aadhk/restpos/bean/POSPrinterSetting);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", posprintersetting);
        return hashmap;
        try
        {
            hashmap.put("serviceStatus", s1);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }

    public final Map a(POSPrinterSetting posprintersetting)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(posprintersetting);
            String s1 = (new StringBuilder("{\"posPrinterSetting\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("printerService/update.action").toString());
            StringEntity stringentity = new StringEntity(s1, "UTF-8");
            stringentity.setContentType("application/json");
            httppost.setEntity(stringentity);
            hashmap.put("serviceStatus", j.a(httppost));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("logo", s);
            String s1 = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("printerService/uploadLogo.action").toString());
            StringEntity stringentity = new StringEntity(s1);
            stringentity.setContentType("application/json");
            httppost.setEntity(stringentity);
            hashmap.put("serviceStatus", j.a(httppost));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }

    public final Map b()
    {
        HashMap hashmap = new HashMap();
        try
        {
            hashmap.put("serviceStatus", j.b((new StringBuilder()).append(a).append("printerService/deleteLogo.action").toString()));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }
}
