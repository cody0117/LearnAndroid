// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ts, q

public final class cf
{

    private ts a;
    private q b;
    private JSONObject c;

    public cf(ts ts1, q q1, JSONObject jsonobject)
    {
        a = ts1;
        b = q1;
        c = jsonobject;
    }

    public final void a()
    {
        a.h();
    }

    public final void a(String s, int i)
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("asset", i);
            jsonobject.put("template", s);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("ad", c);
            jsonobject1.put("click", jsonobject);
            b.a("google.afma.nativeAds.handleClick", jsonobject1);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }
}
