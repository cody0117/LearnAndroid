// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

public final class go
{

    public static int a(Intent intent)
    {
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null)
        {
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            (new StringBuilder("Unexpected type for intent response code. ")).append(obj.getClass().getName());
            return 5;
        }
    }

    public static int a(Bundle bundle)
    {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null)
        {
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            (new StringBuilder("Unexpected type for intent response code. ")).append(obj.getClass().getName());
            return 5;
        }
    }

    public static String a(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = (new JSONObject(s)).getString("developerPayload");
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return s1;
    }

    public static String b(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return intent.getStringExtra("INAPP_PURCHASE_DATA");
        }
    }

    public static String b(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = (new JSONObject(s)).getString("purchaseToken");
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return s1;
    }
}
