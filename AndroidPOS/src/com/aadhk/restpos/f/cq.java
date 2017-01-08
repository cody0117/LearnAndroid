// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.util.i;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.aadhk.restpos.f:
//            ck, cr

public final class cq extends ck
{

    public cq(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        Object obj;
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("settingService/fetchOrderNum.action").toString());
        if (!i.a(s, "prefOrderNum"))
        {
            break MISSING_BLOCK_LABEL_90;
        }
        obj = (Map)gson.fromJson(s, (new cr(this)).getType());
        ((Map) (obj)).put("serviceStatus", "1");
        return ((Map) (obj));
        hashmap.put("serviceStatus", s);
        return hashmap;
        Exception exception;
        exception;
        Exception exception1;
        obj = hashmap;
        exception1 = exception;
_L2:
        exception1.printStackTrace();
        BugSenseHandler.sendException(exception1);
        return ((Map) (obj));
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final Map a(Company company)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(company);
            String s1 = (new StringBuilder("{\"company\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("settingService/updateTax.action").toString());
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

    public final Map a(Company company, int k)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("serviceType", Integer.valueOf(k));
            hashmap1.put("company", company);
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("settingService/updateServiceFee.action").toString());
            StringEntity stringentity = new StringEntity(s);
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

    public final Map a(String s, String s1, String s2)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderNumPrefix", s);
            hashmap1.put("orderNumInitial", s1);
            hashmap1.put("orderNumSuffix", s2);
            String s3 = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("settingService/updateOrderNum.action").toString());
            StringEntity stringentity = new StringEntity(s3);
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

    public final Map a(Locale locale)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("locale", locale);
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("settingService/updateLanguage.action").toString());
            StringEntity stringentity = new StringEntity(s);
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
}
