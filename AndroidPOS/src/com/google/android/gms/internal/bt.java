// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            nx

public final class bt
{

    public static nx a = a("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
    public static nx b = a("gads:sdk_core_experiment_id", ((String) (null)));
    public static nx c = a("gads:sdk_crash_report_enabled");
    public static nx d = a("gads:sdk_crash_report_full_stacktrace");
    public static nx e = a("gads:block_autoclicks");
    public static nx f = a("gads:block_autoclicks_experiment_id", ((String) (null)));
    public static nx g = a("gads:spam_app_context:enabled");
    public static nx h = a("gads:spam_app_context:experiment_id", ((String) (null)));
    public static nx i = a("gads:enable_content_fetching");
    public static nx j = a("gads:content_length_weight", 1);
    public static nx k = a("gads:content_age_weight", 1);
    public static nx l = a("gads:min_content_len", 11);
    public static nx m = a("gads:fingerprint_number", 10);
    public static nx n = a("gads:sleep_sec", 10);
    private static final Bundle o = new Bundle();
    private static boolean p = false;

    public static Bundle a()
    {
        return o;
    }

    private static nx a(String s)
    {
        o.putBoolean(s, false);
        return nx.a(s);
    }

    private static nx a(String s, int i1)
    {
        o.putInt(s, i1);
        return nx.a(s, Integer.valueOf(i1));
    }

    private static nx a(String s, String s1)
    {
        o.putString(s, s1);
        return nx.a(s, s1);
    }

    static 
    {
        p = true;
    }
}
