// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.aadhk.restpos.f:
//            ck

public final class l extends ck
{

    public l(Context context)
    {
        super(context);
    }

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("zipDatabase", s);
            String s1 = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("dataBaseService/uploadDatabase.action").toString());
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
}
