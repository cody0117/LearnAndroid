// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Note;
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
//            ck, dp, do, dm, 
//            dn

public final class dl extends ck
{

    public dl(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("reasonType", Integer.valueOf(1));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("voidReasonService/fetch.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_157;
        }
        List list = (List)gson.fromJson(s1, (new dp(this)).getType());
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

    public final Map a(int k)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("noteId", Integer.valueOf(k));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("voidReasonService/delete.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_160;
        }
        List list = (List)gson.fromJson(s1, (new do(this)).getType());
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

    public final Map a(Note note)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(note);
        String s1 = (new StringBuilder("{\"note\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("voidReasonService/add.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "name"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s2, (new dm(this)).getType());
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

    public final Map b(Note note)
    {
        HashMap hashmap = new HashMap();
        String s2;
        Gson gson = new Gson();
        String s = gson.toJson(note);
        String s1 = (new StringBuilder("{\"note\":")).append(s).append("}").toString();
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("voidReasonService/update.action").toString());
        StringEntity stringentity = new StringEntity(s1, "UTF-8");
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s2 = j.a(httppost);
        if (!i.a(s2, "name"))
        {
            break MISSING_BLOCK_LABEL_164;
        }
        List list = (List)gson.fromJson(s2, (new dn(this)).getType());
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
