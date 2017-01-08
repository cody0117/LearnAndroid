// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
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
//            ck, db, df, de, 
//            dc, dd

public final class da extends ck
{

    public da(Context context)
    {
        super(context);
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("orderId", Long.valueOf(l));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/fetchTimeOrder.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "itemName"))
        {
            break MISSING_BLOCK_LABEL_165;
        }
        List list = (List)gson.fromJson(s1, (new db(this)).getType());
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

    public final Map a(long l, int k)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderId", Long.valueOf(l));
            hashmap1.put("personNum", Integer.valueOf(k));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/updatePersonNum.action").toString());
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

    public final Map a(long l, long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("toOrderId", Long.valueOf(l));
        hashmap1.put("orderItemId", Long.valueOf(l1));
        hashmap1.put("fromOrderId", Long.valueOf(l2));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/changeOrderItem.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "categoryName"))
        {
            break MISSING_BLOCK_LABEL_203;
        }
        List list = (List)(new Gson()).fromJson(s1, (new df(this)).getType());
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
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/voidOrder.action").toString());
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

    public final Map a(Order order, Order order1, String s)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("fromOrder", order);
        hashmap1.put("toOrder", order1);
        hashmap1.put("account", s);
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/combineOrder.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "orderNum"))
        {
            break MISSING_BLOCK_LABEL_181;
        }
        Order order2 = (Order)gson.fromJson(s2, com/aadhk/restpos/bean/Order);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", order2);
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

    public final Map a(Order order, List list)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            String s = gson.toJson(order);
            String s1 = gson.toJson(list);
            String s2 = (new StringBuilder("{\"order\":")).append(s).append(",\"orderItemList\":").append(s1).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/addOrder.action").toString());
            StringEntity stringentity = new StringEntity(s2, "UTF-8");
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

    public final Map a(Order order, List list, Customer customer)
    {
        HashMap hashmap = new HashMap();
        String s4;
        Gson gson = new Gson();
        String s = gson.toJson(order);
        String s1 = gson.toJson(list);
        String s2 = gson.toJson(customer);
        String s3 = (new StringBuilder("{\"order\":")).append(s).append(",\"orderItemList\":").append(s1).append(",\"customer\":").append(s2).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/newOrder.action").toString());
        StringEntity stringentity = new StringEntity(s3, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s4 = j.a(httppost);
        if (!i.a(s4, "orderNum"))
        {
            break MISSING_BLOCK_LABEL_198;
        }
        Order order1 = (Order)gson.fromJson(s4, com/aadhk/restpos/bean/Order);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", order1);
        return hashmap;
        try
        {
            hashmap.put("serviceStatus", s4);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return hashmap;
        }
        return hashmap;
    }

    public final Map a(OrderItem orderitem)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(orderitem);
            String s1 = (new StringBuilder("{\"orderItem\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/updateStatus.action").toString());
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
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("tableName", s);
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/fetchOpenTable.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "orderNum"))
        {
            break MISSING_BLOCK_LABEL_167;
        }
        List list = (List)(new Gson()).fromJson(s2, (new de(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list);
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

    public final Map a(String s, long l)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderId", Long.valueOf(l));
            hashmap1.put("kitchenRemark", s);
            String s1 = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/updateKitchenRemark.action").toString());
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

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        String s1;
        new Gson();
        String s = (new StringBuilder("{\"orderId\":")).append(l).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/fetchSplitBill.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "orderId"))
        {
            break MISSING_BLOCK_LABEL_160;
        }
        List list = (List)(new Gson()).fromJson(s1, (new dc(this)).getType());
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

    public final Map b(OrderItem orderitem)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(orderitem);
            String s1 = (new StringBuilder("{\"orderItem\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/voidOrderItem.action").toString());
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

    public final Map c(long l)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("tableId", Long.valueOf(l));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/fetchTable.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "orderNum"))
        {
            break MISSING_BLOCK_LABEL_170;
        }
        List list = (List)(new Gson()).fromJson(s1, (new dd(this)).getType());
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

    public final Map c(OrderItem orderitem)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(orderitem);
            String s1 = (new StringBuilder("{\"orderItem\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/updatePrice.action").toString());
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

    public final Map d(long l)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderId", Long.valueOf(l));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("takeOrderService/hasPartialPaid.action").toString());
            StringEntity stringentity = new StringEntity(s);
            stringentity.setContentType("application/json");
            httppost.setEntity(stringentity);
            hashmap.put("serviceData", Boolean.valueOf(Boolean.parseBoolean(j.a(httppost))));
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
}
