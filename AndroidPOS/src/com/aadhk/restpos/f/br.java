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
//            ck, bs, bt

public final class br extends ck
{

    public br(Context context)
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
            hashmap1.put("status", Integer.valueOf(3));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("paymentService/changeOrderStatus.action").toString());
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

    public final Map a(long l, long l1)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("orderId", Long.valueOf(l));
        hashmap1.put("billId", Long.valueOf(l1));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("paymentService/fetchBillOrderItem.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "categoryName"))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        List list = (List)gson.fromJson(s1, (new bs(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list);
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

    public final Map a(long l, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("orderId", Long.valueOf(l));
        hashmap1.put("sortItemName", Boolean.valueOf(flag));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("paymentService/fetchOrderItem.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "categoryName"))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        List list = (List)gson.fromJson(s1, (new bt(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list);
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

    public final Map a(Order order)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(order);
            String s1 = (new StringBuilder("{\"order\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("paymentService/payment.action").toString());
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