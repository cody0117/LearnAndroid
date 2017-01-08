// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import com.aadhk.restpos.bean.License;
import com.aadhk.restpos.util.i;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

public final class aa
{

    private String a;

    public aa()
    {
        a = "http://54.174.39.17:8080/aadhkUtil/";
    }

    public final Map a(License license)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(license);
        String s1 = (new StringBuilder("{\"license\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("licenseService/install.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "userName"))
        {
            break MISSING_BLOCK_LABEL_155;
        }
        License license1 = (License)gson.fromJson(s2, com/aadhk/restpos/bean/License);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", license1);
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

    public final Map b(License license)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(license);
        String s1 = (new StringBuilder("{\"license\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("licenseService/register.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "userName"))
        {
            break MISSING_BLOCK_LABEL_155;
        }
        License license1 = (License)gson.fromJson(s2, com/aadhk/restpos/bean/License);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", license1);
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
