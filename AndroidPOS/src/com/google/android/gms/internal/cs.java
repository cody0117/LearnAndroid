// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            cz, mg

final class cs
    implements cz
{

    cs()
    {
    }

    public final void a(mg mg1, Map map)
    {
        PackageManager packagemanager = mg1.getContext().getPackageManager();
        String s = (String)map.get("data");
        JSONObject jsonobject;
        JSONArray jsonarray;
        JSONObject jsonobject1;
        int i;
        try
        {
            jsonobject = new JSONObject(s);
        }
        catch (JSONException jsonexception3)
        {
            mg1.b("openableIntents", new JSONObject());
            return;
        }
        try
        {
            jsonarray = jsonobject.getJSONArray("intents");
        }
        catch (JSONException jsonexception)
        {
            mg1.b("openableIntents", new JSONObject());
            return;
        }
        jsonobject1 = new JSONObject();
        i = 0;
label0:
        do
        {
label1:
            {
                if (i >= jsonarray.length())
                {
                    break label0;
                }
                JSONObject jsonobject2;
                String s1;
                String s2;
                String s3;
                String s4;
                String s5;
                String s6;
                Intent intent;
                boolean flag;
                try
                {
                    jsonobject2 = jsonarray.getJSONObject(i);
                }
                catch (JSONException jsonexception1)
                {
                    break label1;
                }
                s1 = jsonobject2.optString("id");
                s2 = jsonobject2.optString("u");
                s3 = jsonobject2.optString("i");
                s4 = jsonobject2.optString("m");
                s5 = jsonobject2.optString("p");
                s6 = jsonobject2.optString("c");
                jsonobject2.optString("f");
                jsonobject2.optString("e");
                intent = new Intent();
                if (!TextUtils.isEmpty(s2))
                {
                    intent.setData(Uri.parse(s2));
                }
                if (!TextUtils.isEmpty(s3))
                {
                    intent.setAction(s3);
                }
                if (!TextUtils.isEmpty(s4))
                {
                    intent.setType(s4);
                }
                if (!TextUtils.isEmpty(s5))
                {
                    intent.setPackage(s5);
                }
                if (!TextUtils.isEmpty(s6))
                {
                    String as[] = s6.split("/", 2);
                    if (as.length == 2)
                    {
                        intent.setComponent(new ComponentName(as[0], as[1]));
                    }
                }
                if (packagemanager.resolveActivity(intent, 0x10000) != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                try
                {
                    jsonobject1.put(s1, flag);
                }
                catch (JSONException jsonexception2) { }
            }
            i++;
        } while (true);
        mg1.b("openableIntents", jsonobject1);
    }
}
