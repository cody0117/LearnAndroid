// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.SplitBill;
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
//            ck, cu, ct, cw, 
//            cv, cx

public final class cs extends ck
{

    public cs(Context context)
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
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "amount"))
        {
            break MISSING_BLOCK_LABEL_165;
        }
        List list = (List)gson.fromJson(s1, (new cu(this)).getType());
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

    public final Map a(long l, long l1)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("orderId", Long.valueOf(l));
        hashmap1.put("billId", Long.valueOf(l1));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/fetchBillOrderItem.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "itemName"))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        List list = (List)gson.fromJson(s1, (new ct(this)).getType());
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

    public final Map a(long l, long l1, List list, double d)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderId", Long.valueOf(l));
            hashmap1.put("billId", Long.valueOf(l1));
            hashmap1.put("orderItemList", list);
            hashmap1.put("amount", Double.valueOf(d));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/addItem.action").toString());
            StringEntity stringentity = new StringEntity(s, "UTF-8");
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

    public final Map a(long l, long l1, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("orderId", Long.valueOf(l1));
        hashmap1.put("billId", Long.valueOf(l));
        hashmap1.put("isEmpty", Boolean.valueOf(flag));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/delete.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "amount"))
        {
            break MISSING_BLOCK_LABEL_198;
        }
        List list = (List)gson.fromJson(s1, (new cw(this)).getType());
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

    public final Map a(SplitBill splitbill)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(splitbill);
            String s1 = (new StringBuilder("{\"splitBill\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/update.action").toString());
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

    public final Map a(List list, long l)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("splitBillList", list);
        hashmap1.put("orderId", Long.valueOf(l));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/addEqual.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "amount"))
        {
            break MISSING_BLOCK_LABEL_180;
        }
        List list1 = (List)gson.fromJson(s1, (new cv(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list1);
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

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("orderId", Long.valueOf(l));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/deleteOne.action").toString());
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

    public final Map b(SplitBill splitbill)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(splitbill);
        String s1 = (new StringBuilder("{\"splitBill\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("splitBillService/addAmount.action").toString());
        StringEntity stringentity = new StringEntity(s1);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "amount"))
        {
            break MISSING_BLOCK_LABEL_162;
        }
        List list = (List)gson.fromJson(s2, (new cx(this)).getType());
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
}
