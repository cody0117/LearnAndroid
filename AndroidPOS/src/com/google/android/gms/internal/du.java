// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            dt, ec

public final class du
{

    public final List a;
    public final long b;
    public final List c;
    public final List d;
    public final List e;
    public final String f;
    public final long g;
    public int h;
    public int i;

    public du(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        JSONArray jsonarray = jsonobject.getJSONArray("ad_networks");
        ArrayList arraylist = new ArrayList(jsonarray.length());
        int j = -1;
        for (int k = 0; k < jsonarray.length(); k++)
        {
            dt dt1 = new dt(jsonarray.getJSONObject(k));
            arraylist.add(dt1);
            if (j < 0 && a(dt1))
            {
                j = k;
            }
        }

        h = j;
        i = jsonarray.length();
        a = Collections.unmodifiableList(arraylist);
        f = jsonobject.getString("qdata");
        JSONObject jsonobject1 = jsonobject.optJSONObject("settings");
        if (jsonobject1 != null)
        {
            b = jsonobject1.optLong("ad_network_timeout_millis", -1L);
            c = ec.a(jsonobject1, "click_urls");
            d = ec.a(jsonobject1, "imp_urls");
            e = ec.a(jsonobject1, "nofill_urls");
            long l = jsonobject1.optLong("refresh", -1L);
            long l1;
            if (l > 0L)
            {
                l1 = l * 1000L;
            } else
            {
                l1 = -1L;
            }
            g = l1;
            return;
        } else
        {
            b = -1L;
            c = null;
            d = null;
            e = null;
            g = -1L;
            return;
        }
    }

    private static boolean a(dt dt1)
    {
        for (Iterator iterator = dt1.c.iterator(); iterator.hasNext();)
        {
            if (((String)iterator.next()).equals("com.google.ads.mediation.admob.AdMobAdapter"))
            {
                return true;
            }
        }

        return false;
    }
}
