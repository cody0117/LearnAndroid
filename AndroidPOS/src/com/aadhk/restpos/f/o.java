// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Discount;
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
//            ck, s, r, p, 
//            q

public final class o extends ck
{

    public o(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        s1 = j.c((new StringBuilder()).append(a).append("discountService/fetch.action").toString());
        if (!i.a(s1, "reason"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s1, (new s(this)).getType());
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

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("discountId", Long.valueOf(l));
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("discountService/delete.action").toString());
        StringEntity stringentity = new StringEntity(s1);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "reason"))
        {
            break MISSING_BLOCK_LABEL_163;
        }
        List list = (List)gson.fromJson(s2, (new r(this)).getType());
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

    public final Map a(Discount discount)
    {
        HashMap hashmap = new HashMap();
        String s3;
        Gson gson = new Gson();
        String s1 = gson.toJson(discount);
        String s2 = (new StringBuilder("{\"discount\":")).append(s1).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("discountService/add.action").toString());
        StringEntity stringentity = new StringEntity(s2, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s3 = j.a(httppost);
        if (!i.a(s3, "reason"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s3, (new p(this)).getType());
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

    public final Map b(Discount discount)
    {
        HashMap hashmap = new HashMap();
        String s3;
        Gson gson = new Gson();
        String s1 = gson.toJson(discount);
        String s2 = (new StringBuilder("{\"discount\":")).append(s1).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("discountService/update.action").toString());
        StringEntity stringentity = new StringEntity(s2, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s3 = j.a(httppost);
        if (!i.a(s3, "reason"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s3, (new q(this)).getType());
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
}
