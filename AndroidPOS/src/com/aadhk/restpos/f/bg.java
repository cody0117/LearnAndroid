// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.CloseOutCashRegister;
import com.aadhk.restpos.util.i;
import com.aadhk.restpos.util.j;
import com.bugsense.trace.BugSenseHandler;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.aadhk.restpos.f:
//            ck, bh

public final class bg extends ck
{

    public bg(Context context)
    {
        super(context);
    }

    public final Map a(CloseOutCashRegister closeoutcashregister)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(closeoutcashregister);
            String s1 = (new StringBuilder("{\"closeOutCashRegister\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("payCloseOutService/add.action").toString());
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
        Object obj;
        String s2;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("currentTime", s);
        String s1 = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("payCloseOutService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s1);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "serviceLastTime"))
        {
            break MISSING_BLOCK_LABEL_150;
        }
        obj = (Map)gson.fromJson(s2, (new bh(this)).getType());
        ((Map) (obj)).put("serviceStatus", "1");
        return ((Map) (obj));
        hashmap.put("serviceStatus", s2);
        return hashmap;
        Exception exception;
        exception;
        Exception exception1;
        obj = hashmap;
        exception1 = exception;
_L2:
        exception1.printStackTrace();
        BugSenseHandler.sendException(exception1);
        return ((Map) (obj));
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
