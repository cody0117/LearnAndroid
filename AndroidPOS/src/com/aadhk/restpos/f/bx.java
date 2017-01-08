// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Order;
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
//            ck, by

public final class bx extends ck
{

    public bx(Context context)
    {
        super(context);
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderId", Long.valueOf(l));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("receiptListService/delete.action").toString());
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

    public final Map a(Order order)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(order);
        String s1 = (new StringBuilder("{\"order\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("receiptListService/fetchOrder.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "orderNum"))
        {
            break MISSING_BLOCK_LABEL_155;
        }
        Order order1 = (Order)gson.fromJson(s2, com/aadhk/restpos/bean/Order);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", order1);
        return hashmap;
        try
        {
            hashmap.put("serviceStatus", s2);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }

    public final Map a(String s, String s1, String s2, String s3)
    {
        HashMap hashmap = new HashMap();
        String s5;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("startDate", s);
        hashmap1.put("endDate", s1);
        hashmap1.put("timeIn", s2);
        hashmap1.put("timeOut", s3);
        String s4 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("receiptListService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s4);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s5 = j.a(httppost);
        if (!i.a(s5, "orderNum"))
        {
            break MISSING_BLOCK_LABEL_192;
        }
        List list = (List)gson.fromJson(s5, (new by(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list);
        return hashmap;
        try
        {
            hashmap.put("serviceStatus", s5);
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
