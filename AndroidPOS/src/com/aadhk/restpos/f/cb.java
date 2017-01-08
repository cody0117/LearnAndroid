// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Reservation;
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
//            ck, ce, cc, cg, 
//            cf, cd

public final class cb extends ck
{

    public cb(Context context)
    {
        super(context);
    }

    public final Map a(int k)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("reservationId", Integer.valueOf(k));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("reservationService/updateStatus.action").toString());
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

    public final Map a(int k, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("reservationId", Integer.valueOf(k));
        hashmap1.put("isToday", Boolean.valueOf(flag));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("reservationService/delete.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_179;
        }
        Map map = (Map)gson.fromJson(s1, (new ce(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", map);
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

    public final Map a(Reservation reservation, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("reservation", reservation);
        hashmap1.put("isToday", Boolean.valueOf(flag));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("reservationService/add.action").toString());
        StringEntity stringentity = new StringEntity(s, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_178;
        }
        Map map = (Map)gson.fromJson(s1, (new cc(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", map);
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

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("tableIsOpen", s);
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("reservationService/fetchTableName.action").toString());
        StringEntity stringentity = new StringEntity(s1);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "name"))
        {
            break MISSING_BLOCK_LABEL_159;
        }
        List list = (List)gson.fromJson(s2, (new cg(this)).getType());
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

    public final Map a(boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("isToday", Boolean.valueOf(flag));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("reservationService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_162;
        }
        Map map = (Map)gson.fromJson(s1, (new cf(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", map);
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

    public final Map b(Reservation reservation, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("reservation", reservation);
        hashmap1.put("isToday", Boolean.valueOf(flag));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("reservationService/update.action").toString());
        StringEntity stringentity = new StringEntity(s, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_178;
        }
        Map map = (Map)gson.fromJson(s1, (new cd(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", map);
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
}
