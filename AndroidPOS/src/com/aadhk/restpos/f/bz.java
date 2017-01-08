// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
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
//            ck, ca

public final class bz extends ck
{

    public bz(Context context)
    {
        super(context);
    }

    public final Map a(boolean aflag[], String s, String s1)
    {
        HashMap hashmap = new HashMap();
        String s3;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("requireReport", aflag);
        hashmap1.put("fromDate", s);
        hashmap1.put("toDate", s1);
        hashmap1.put("cashierName", null);
        String s2 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("reportListService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s2, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s3 = j.a(httppost);
        if (!i.a(s3, "name"))
        {
            break MISSING_BLOCK_LABEL_193;
        }
        List list = (List)gson.fromJson(s3, (new ca(this)).getType());
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
