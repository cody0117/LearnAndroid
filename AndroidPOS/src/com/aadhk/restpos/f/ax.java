// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Table;
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
//            ck, ba, ay, az, 
//            bb, bc

public final class ax extends ck
{

    public ax(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        try
        {
            hashmap.put("serviceStatus", j.c((new StringBuilder()).append(a).append("mgrTableService/deleteAll.action").toString()));
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
        hashmap1.put("tableId", Long.valueOf(l));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrTableService/delete.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_163;
        }
        List list = (List)gson.fromJson(s1, (new ba(this)).getType());
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

    public final Map a(Table table)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(table);
        String s1 = (new StringBuilder("{\"table\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrTableService/addUpdate.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "name"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s2, (new ay(this)).getType());
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

    public final Map a(List list)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(list);
        String s1 = (new StringBuilder("{\"tableList\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrTableService/addAll.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "name"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list1 = (List)gson.fromJson(s2, (new az(this)).getType());
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", list1);
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

    public final Map a(Map map)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(map);
            String s1 = (new StringBuilder("{\"sequenceMap\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrTableService/updateSequence.action").toString());
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
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrTableService/fetch.action").toString());
        if (!i.a(s, "name"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s, (new bb(this)).getType());
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

    public final Map c()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrTableService/fetchTableGroup.action").toString());
        if (!i.a(s, "name"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s, (new bc(this)).getType());
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
}
