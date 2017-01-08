// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import com.aadhk.restpos.bean.Item;
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
//            ck, ak, al, aj, 
//            am, an, ao

public final class ai extends ck
{

    public ai(Context context)
    {
        super(context);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrItemService/fetch.action").toString());
        if (!i.a(s, "name"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s, (new ak(this)).getType());
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
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("itemId", Long.valueOf(l));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/delete.action").toString());
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

    public final Map a(long l, int k)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("categoryId", Long.valueOf(l));
            hashmap1.put("printerId", Integer.valueOf(k));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/updatePrinter.action").toString());
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

    public final Map a(long l, int k, int i1, int j1)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("categoryId", Long.valueOf(l));
            hashmap1.put("tax1Id", Integer.valueOf(k));
            hashmap1.put("tax2Id", Integer.valueOf(i1));
            hashmap1.put("tax3Id", Integer.valueOf(j1));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/updateTax.action").toString());
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

    public final Map a(long l, String s)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("categoryId", Long.valueOf(l));
            hashmap1.put("modifierGroupIds", s);
            String s1 = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/updateModifierGroup.action").toString());
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

    public final Map a(Item item)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(item);
            String s1 = (new StringBuilder("{\"item\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/add.action").toString());
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

    public final Map a(List list)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(list);
            String s1 = (new StringBuilder("{\"itemList\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/addAll.action").toString());
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

    public final Map a(Map map)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(map);
            String s1 = (new StringBuilder("{\"sequenceMap\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/updateSequence.action").toString());
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

    public final Map b()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrItemService/fetchModifier.action").toString());
        if (!i.a(s, "name"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s, (new al(this)).getType());
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

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        String s1;
        Gson gson = new Gson();
        HashMap hashmap1 = new HashMap();
        hashmap1.put("categoryId", Long.valueOf(l));
        String s = gson.toJson(hashmap1);
        HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/fetchByCategory.action").toString());
        StringEntity stringentity = new StringEntity(s);
        stringentity.setContentType("application/json");
        httppost.setEntity(stringentity);
        s1 = j.a(httppost);
        if (!i.a(s1, "name"))
        {
            break MISSING_BLOCK_LABEL_163;
        }
        List list = (List)gson.fromJson(s1, (new aj(this)).getType());
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

    public final Map b(long l, String s)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("categoryId", Long.valueOf(l));
            hashmap1.put("kitchenNoteGroupIds", s);
            String s1 = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/updateKitchenNoteGroup.action").toString());
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

    public final Map b(Item item)
    {
        HashMap hashmap = new HashMap();
        try
        {
            String s = (new Gson()).toJson(item);
            String s1 = (new StringBuilder("{\"item\":")).append(s).append("}").toString();
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/update.action").toString());
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

    public final Map c()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrItemService/fetchKitchenNote.action").toString());
        if (!i.a(s, "name"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        List list = (List)gson.fromJson(s, (new am(this)).getType());
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

    public final Map c(long l)
    {
        HashMap hashmap = new HashMap();
        try
        {
            Gson gson = new Gson();
            HashMap hashmap1 = new HashMap();
            hashmap1.put("categoryId", Long.valueOf(l));
            String s = gson.toJson(hashmap1);
            HttpPost httppost = j.a((new StringBuilder()).append(a).append("mgrItemService/deleteByCategory.action").toString());
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

    public final Map d()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrItemService/fetchModifierGroup.action").toString());
        if (!i.a(s, "{"))
        {
            break MISSING_BLOCK_LABEL_95;
        }
        hashmap.put("serviceData", (Map)gson.fromJson(s, (new an(this)).getType()));
        hashmap.put("serviceStatus", "1");
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

    public final Map e()
    {
        HashMap hashmap = new HashMap();
        String s;
        Gson gson = new Gson();
        s = j.c((new StringBuilder()).append(a).append("mgrItemService/fetchKitchenNoteGroup.action").toString());
        if (!i.a(s, "{"))
        {
            break MISSING_BLOCK_LABEL_95;
        }
        hashmap.put("serviceData", (Map)gson.fromJson(s, (new ao(this)).getType()));
        hashmap.put("serviceStatus", "1");
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
