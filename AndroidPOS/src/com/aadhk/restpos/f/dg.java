// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.User;
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
//            ck, dk, dj, dh, 
//            di

public final class dg extends ck
{

    public dg(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("userService/fetchAll.action").toString());
        if (!i.a(s, "account"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s, (new dk(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list);
        return hashmap;
        try
        {
            hashmap.put("serviceStatus", s);
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
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("userId", Long.valueOf(l));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("userService/delete.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "account"))
        {
            break MISSING_BLOCK_LABEL_163;
        }
        List list = (List)gson.fromJson(s1, (new dj(this)).getType());
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

    public final Map a(User user)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(user);
        String s1 = (new StringBuilder("{\"user\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("userService/add.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "account"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s2, (new dh(this)).getType());
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

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("password", s);
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("userService/validateManager.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "true") && !i.a(s2, "false"))
        {
            break MISSING_BLOCK_LABEL_155;
        }
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", Boolean.valueOf(Boolean.parseBoolean(s2)));
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

    public final Map b(User user)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(user);
        String s1 = (new StringBuilder("{\"user\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("userService/update.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "account"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s2, (new di(this)).getType());
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
