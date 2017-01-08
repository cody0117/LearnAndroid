// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.util.i;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.aadhk.restpos.f:
//            ck, bj, bk, bl

public final class bi extends ck
{

    public bi(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        Object obj;
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("payInOutService/fetchCloseOut.action").toString());
        if (!i.a(s, "serviceLastTime"))
        {
            break MISSING_BLOCK_LABEL_90;
        }
        obj = (Map)gson.fromJson(s, (new bj(this)).getType());
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

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("cashRegisterId", Long.valueOf(l));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("payInOutService/delete.action").toString());
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

    public final Map a(CashRegister cashregister)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(cashregister);
            String s1 = (new StringBuilder("{\"cashRegister\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("payInOutService/add.action").toString());
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

    public final Map a(String s, String s1)
    {
        HashMap hashmap = new HashMap();
        String s3;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("formTime", s);
        hashmap1.put("toTime", s1);
        String s2 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("payInOutService/fetchCashRegister.action").toString());
        StringEntity stringentity = new StringEntity(s2);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s3 = j.a(httppost);
        if (!i.a(s3, "amount"))
        {
            break MISSING_BLOCK_LABEL_173;
        }
        List list = (List)gson.fromJson(s3, (new bk(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list);
        return hashmap;
        try
        {
            hashmap.put("serviceStatus", s3);
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
        Object obj;
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("lastTime", null);
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("payInOutService/fetchLastTime.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "serviceLastTime"))
        {
            break MISSING_BLOCK_LABEL_147;
        }
        obj = (Map)gson.fromJson(s1, (new bl(this)).getType());
        ((Map) (obj)).put("serviceStatus", "1");
        return ((Map) (obj));
        hashmap.put("serviceStatus", s1);
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

    public final Map b(CashRegister cashregister)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(cashregister);
            String s1 = (new StringBuilder("{\"cashRegister\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("payInOutService/update.action").toString());
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
}
