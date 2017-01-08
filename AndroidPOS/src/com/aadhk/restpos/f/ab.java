// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.bean.VersionData;
import com.aadhk.restpos.util.i;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.aadhk.restpos.f:
//            ck

public final class ab extends ck
{

    public ab(Context context)
    {
        super(context);
    }

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("password", s);
        hashmap1.put("locale", Locale.getDefault());
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("loginService/login.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "password"))
        {
            break MISSING_BLOCK_LABEL_161;
        }
        User user = (User)gson.fromJson(s2, com/aadhk/restpos/bean/User);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", user);
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
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(map, map.getClass());
        String s1 = (new StringBuilder("{\"tableVersionMap\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("loginService/checkTableVersion.action").toString());
        StringEntity stringentity = new StringEntity(s1);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "tableList"))
        {
            break MISSING_BLOCK_LABEL_157;
        }
        VersionData versiondata = (VersionData)gson.fromJson(s2, com/aadhk/restpos/bean/VersionData);
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", versiondata);
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
