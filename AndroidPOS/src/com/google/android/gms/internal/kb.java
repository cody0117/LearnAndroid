// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            cz, q, lt, ka, 
//            px, mg

final class kb
    implements cz
{

    final q a;
    final lt b;
    final ka c;

    kb(ka ka1, q q1, lt lt1)
    {
        c = ka1;
        a = q1;
        b = lt1;
        super();
    }

    public final void a(mg mg, Map map)
    {
        a.b("/nativeAdPreProcess");
        try
        {
            String s = (String)map.get("success");
            if (!TextUtils.isEmpty(s))
            {
                b.a((new JSONObject(s)).getJSONArray("ads").getJSONObject(0));
                return;
            }
        }
        catch (JSONException jsonexception) { }
        c.a(0);
        px.a(c.a(), "Unable to set the ad state error!");
        b.a(null);
    }
}
