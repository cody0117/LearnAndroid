// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            lq, fj, fh, gs, 
//            kg, lj, av, bj, 
//            ay, kw

public final class kl
{

    private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd");

    public static fj a(Context context, fh fh1, String s)
    {
        JSONObject jsonobject;
        String s1;
        String s3;
        String s4;
        long l;
        String s5;
        long l1;
        int i;
        fj fj3;
        Object obj;
        int i1;
        String s2;
        String s6;
        fj fj1;
        fj fj2;
        JSONArray jsonarray;
        try
        {
            jsonobject = new JSONObject(s);
            s1 = jsonobject.optString("ad_base_url", null);
            s2 = jsonobject.optString("ad_url", null);
            s3 = jsonobject.optString("ad_size", null);
            s4 = jsonobject.optString("ad_html", null);
        }
        catch (JSONException jsonexception)
        {
            (new StringBuilder("Could not parse the mediation config: ")).append(jsonexception.getMessage());
            return new fj(0);
        }
        l = -1L;
        s5 = jsonobject.optString("debug_dialog", null);
        if (!jsonobject.has("interstitial_timeout")) goto _L2; else goto _L1
_L1:
        l1 = (long)(1000D * jsonobject.getDouble("interstitial_timeout"));
_L42:
        s6 = jsonobject.optString("orientation", null);
        i = -1;
        if (!"portrait".equals(s6)) goto _L4; else goto _L3
_L3:
        i = lq.c();
_L7:
        if (TextUtils.isEmpty(s4))
        {
            break; /* Loop/switch isn't completed */
        }
        if (TextUtils.isEmpty(s1))
        {
            return new fj(0);
        }
          goto _L5
_L4:
        if ("landscape".equals(s6))
        {
            i = lq.b();
        }
        if (true) goto _L7; else goto _L6
_L6:
        if (TextUtils.isEmpty(s2)) goto _L9; else goto _L8
_L8:
        fj2 = kg.a(context, fh1.k.b, s2, null);
        s1 = fj2.b;
        s4 = fj2.c;
        l = fj2.n;
        fj3 = fj2;
_L41:
        jsonarray = jsonobject.optJSONArray("click_urls");
        if (fj3 != null) goto _L11; else goto _L10
_L10:
        obj = null;
_L19:
        if (jsonarray == null) goto _L13; else goto _L12
_L12:
        if (obj != null) goto _L15; else goto _L14
_L14:
        obj = new LinkedList();
          goto _L15
_L18:
        if (i1 >= jsonarray.length()) goto _L17; else goto _L16
_L16:
        ((List) (obj)).add(jsonarray.getString(i1));
        i1++;
          goto _L18
_L9:
        fj1 = new fj(0);
        return fj1;
_L11:
        obj = fj3.d;
          goto _L19
_L40:
        JSONArray jsonarray1 = jsonobject.optJSONArray("impression_urls");
        if (fj3 != null) goto _L21; else goto _L20
_L20:
        Object obj2 = null;
_L29:
        if (jsonarray1 == null) goto _L23; else goto _L22
_L22:
        if (obj2 != null) goto _L25; else goto _L24
_L24:
        obj2 = new LinkedList();
          goto _L25
_L28:
        int k;
        if (k >= jsonarray1.length()) goto _L27; else goto _L26
_L26:
        ((List) (obj2)).add(jsonarray1.getString(k));
        k++;
          goto _L28
_L21:
        obj2 = fj3.f;
          goto _L29
_L39:
        JSONArray jsonarray2 = jsonobject.optJSONArray("manual_impression_urls");
        if (fj3 != null) goto _L31; else goto _L30
_L30:
        Object obj4 = null;
_L37:
        if (jsonarray2 == null) goto _L33; else goto _L32
_L32:
        if (obj4 != null) goto _L35; else goto _L34
_L34:
        obj4 = new LinkedList();
          goto _L35
_L36:
        int j;
        if (j >= jsonarray2.length())
        {
            break MISSING_BLOCK_LABEL_660;
        }
        ((List) (obj4)).add(jsonarray2.getString(j));
        j++;
          goto _L36
_L31:
        obj4 = fj3.j;
          goto _L37
_L38:
        if (fj3 == null)
        {
            break MISSING_BLOCK_LABEL_517;
        }
        if (fj3.l != -1)
        {
            i = fj3.l;
        }
        if (fj3.g > 0L)
        {
            l1 = fj3.g;
        }
        String s7;
        boolean flag;
        s7 = jsonobject.optString("active_view");
        flag = jsonobject.optBoolean("ad_is_javascript", false);
        String s8;
        s8 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_551;
        }
        s8 = jsonobject.optString("ad_passback_url", null);
        Object obj1;
        Object obj3;
        Object obj5;
        fj fj4 = new fj(s1, s4, ((List) (obj1)), ((List) (obj3)), l1, ((List) (obj5)), i, s3, l, s5, flag, s8, s7, fh1.p);
        return fj4;
_L33:
        obj5 = obj4;
          goto _L38
_L23:
        obj3 = obj2;
          goto _L39
_L13:
        obj1 = obj;
          goto _L40
_L5:
        fj3 = null;
          goto _L41
_L2:
        l1 = -1L;
          goto _L42
_L15:
        i1 = 0;
          goto _L18
_L17:
        obj1 = obj;
          goto _L40
_L25:
        k = 0;
          goto _L28
_L27:
        obj3 = obj2;
          goto _L39
_L35:
        j = 0;
          goto _L36
        obj5 = obj4;
          goto _L38
    }

    private static Integer a(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return Integer.valueOf(i);
    }

    private static String a(int i)
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(0xffffff & i);
        return String.format(locale, "#%06x", aobj);
    }

    public static String a(fh fh1, kw kw1, String s, String s1, String s2)
    {
        String s5;
        String s6;
        HashMap hashmap;
        av av1;
        String s3;
        StringBuilder stringbuilder;
        ay aay[];
        int i;
        int j;
        ay ay1;
        int k;
        int l;
        Bundle bundle;
        Bundle bundle1;
        String s4;
        Location location;
        HashMap hashmap1;
        Float float1;
        Long long1;
        Long long2;
        Long long3;
        bj bj1;
        try
        {
            hashmap = new HashMap();
            ArrayList arraylist = new ArrayList();
            if (!TextUtils.isEmpty(s))
            {
                arraylist.add(s);
            }
            if (!TextUtils.isEmpty(s1))
            {
                arraylist.add(s1);
            }
            if (!TextUtils.isEmpty(s2))
            {
                arraylist.add(s2);
            }
            if (arraylist.size() > 0)
            {
                hashmap.put("eid", TextUtils.join(",", arraylist));
            }
            if (fh1.b != null)
            {
                hashmap.put("ad_pos", fh1.b);
            }
            av1 = fh1.c;
            s3 = lj.a();
        }
        catch (JSONException jsonexception)
        {
            (new StringBuilder("Problem serializing ad request to JSON: ")).append(jsonexception.getMessage());
            return null;
        }
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        hashmap.put("abf", s3);
        if (av1.b != -1L)
        {
            hashmap.put("cust_age", a.format(new Date(av1.b)));
        }
        if (av1.c != null)
        {
            hashmap.put("extras", av1.c);
        }
        if (av1.d != -1)
        {
            hashmap.put("cust_gender", Integer.valueOf(av1.d));
        }
        if (av1.e != null)
        {
            hashmap.put("kw", av1.e);
        }
        if (av1.g != -1)
        {
            hashmap.put("tag_for_child_directed_treatment", Integer.valueOf(av1.g));
        }
        if (av1.f)
        {
            hashmap.put("adtest", "on");
        }
        if (av1.a < 2) goto _L2; else goto _L1
_L1:
        if (av1.h)
        {
            hashmap.put("d_imp_hdr", Integer.valueOf(1));
        }
        if (!TextUtils.isEmpty(av1.i))
        {
            hashmap.put("ppid", av1.i);
        }
        if (av1.j == null) goto _L2; else goto _L3
_L3:
        bj1 = av1.j;
        if (Color.alpha(bj1.b) != 0)
        {
            hashmap.put("acolor", a(bj1.b));
        }
        if (Color.alpha(bj1.c) != 0)
        {
            hashmap.put("bgcolor", a(bj1.c));
        }
        if (Color.alpha(bj1.d) != 0 && Color.alpha(bj1.e) != 0)
        {
            hashmap.put("gradientto", a(bj1.d));
            hashmap.put("gradientfrom", a(bj1.e));
        }
        if (Color.alpha(bj1.f) != 0)
        {
            hashmap.put("bcolor", a(bj1.f));
        }
        hashmap.put("bthick", Integer.toString(bj1.g));
        bj1.h;
        JVM INSTR tableswitch 0 3: default 1856
    //                   0 1868
    //                   1 1876
    //                   2 1884
    //                   3 1892;
           goto _L4 _L5 _L6 _L7 _L8
_L28:
        if (s5 == null) goto _L10; else goto _L9
_L9:
        hashmap.put("btype", s5);
_L10:
        bj1.i;
        JVM INSTR tableswitch 0 2: default 1862
    //                   0 1908
    //                   1 1916
    //                   2 1900;
           goto _L11 _L12 _L13 _L14
_L29:
        if (s6 == null) goto _L16; else goto _L15
_L15:
        hashmap.put("callbuttoncolor", s6);
_L16:
        if (bj1.j != null)
        {
            hashmap.put("channel", bj1.j);
        }
        if (Color.alpha(bj1.k) != 0)
        {
            hashmap.put("dcolor", a(bj1.k));
        }
        if (bj1.l != null)
        {
            hashmap.put("font", bj1.l);
        }
        if (Color.alpha(bj1.m) != 0)
        {
            hashmap.put("hcolor", a(bj1.m));
        }
        hashmap.put("headersize", Integer.toString(bj1.n));
        if (bj1.o != null)
        {
            hashmap.put("q", bj1.o);
        }
_L2:
        if (av1.a >= 3 && av1.l != null)
        {
            hashmap.put("url", av1.l);
        }
        hashmap.put("format", fh1.d.b);
        if (fh1.d.f == -1)
        {
            hashmap.put("smart_w", "full");
        }
        if (fh1.d.c == -2)
        {
            hashmap.put("smart_h", "auto");
        }
        if (fh1.d.h == null) goto _L18; else goto _L17
_L17:
        stringbuilder = new StringBuilder();
        aay = fh1.d.h;
        i = aay.length;
        j = 0;
_L25:
        if (j >= i) goto _L20; else goto _L19
_L19:
        ay1 = aay[j];
        if (stringbuilder.length() != 0)
        {
            stringbuilder.append("|");
        }
        if (ay1.f != -1) goto _L22; else goto _L21
_L21:
        k = (int)((float)ay1.g / kw1.q);
_L26:
        stringbuilder.append(k);
        stringbuilder.append("x");
        if (ay1.c != -2) goto _L24; else goto _L23
_L23:
        l = (int)((float)ay1.d / kw1.q);
_L27:
        stringbuilder.append(l);
        j++;
          goto _L25
_L22:
        k = ay1.f;
          goto _L26
_L24:
        l = ay1.c;
          goto _L27
_L20:
        hashmap.put("sz", stringbuilder);
_L18:
        if (fh1.m != 0)
        {
            hashmap.put("native_version", Integer.valueOf(fh1.m));
            hashmap.put("native_templates", fh1.n);
        }
        hashmap.put("slotname", fh1.e);
        hashmap.put("pn", fh1.f.packageName);
        if (fh1.g != null)
        {
            hashmap.put("vc", Integer.valueOf(fh1.g.versionCode));
        }
        hashmap.put("ms", fh1.h);
        hashmap.put("seq_num", fh1.i);
        hashmap.put("session_id", fh1.j);
        hashmap.put("js", fh1.k.b);
        hashmap.put("am", Integer.valueOf(kw1.a));
        hashmap.put("cog", a(kw1.b));
        hashmap.put("coh", a(kw1.c));
        if (!TextUtils.isEmpty(kw1.d))
        {
            hashmap.put("carrier", kw1.d);
        }
        hashmap.put("gl", kw1.e);
        if (kw1.f)
        {
            hashmap.put("simulator", Integer.valueOf(1));
        }
        hashmap.put("ma", a(kw1.g));
        hashmap.put("sp", a(kw1.h));
        hashmap.put("hl", kw1.i);
        if (!TextUtils.isEmpty(kw1.j))
        {
            hashmap.put("mv", kw1.j);
        }
        hashmap.put("muv", Integer.valueOf(kw1.k));
        if (kw1.l != -2)
        {
            hashmap.put("cnt", Integer.valueOf(kw1.l));
        }
        hashmap.put("gnt", Integer.valueOf(kw1.m));
        hashmap.put("pt", Integer.valueOf(kw1.n));
        hashmap.put("rm", Integer.valueOf(kw1.o));
        hashmap.put("riv", Integer.valueOf(kw1.p));
        hashmap.put("u_sd", Float.valueOf(kw1.q));
        hashmap.put("sh", Integer.valueOf(kw1.s));
        hashmap.put("sw", Integer.valueOf(kw1.r));
        bundle = new Bundle();
        bundle.putInt("active_network_state", kw1.w);
        bundle.putBoolean("active_network_metered", kw1.v);
        hashmap.put("connectivity", bundle);
        bundle1 = new Bundle();
        bundle1.putBoolean("is_charging", kw1.u);
        bundle1.putDouble("battery_level", kw1.t);
        hashmap.put("battery", bundle1);
        if (fh1.c.a >= 2 && fh1.c.k != null)
        {
            location = fh1.c.k;
            hashmap1 = new HashMap();
            float1 = Float.valueOf(1000F * location.getAccuracy());
            long1 = Long.valueOf(1000L * location.getTime());
            long2 = Long.valueOf((long)(10000000D * location.getLatitude()));
            long3 = Long.valueOf((long)(10000000D * location.getLongitude()));
            hashmap1.put("radius", float1);
            hashmap1.put("lat", long2);
            hashmap1.put("long", long3);
            hashmap1.put("time", long1);
            hashmap.put("uule", hashmap1);
        }
        if (fh1.a >= 2)
        {
            hashmap.put("quality_signals", fh1.l);
        }
        if (fh1.a >= 4 && fh1.p)
        {
            hashmap.put("forceHttps", Boolean.valueOf(fh1.p));
        }
        if (fh1.a >= 3 && fh1.o != null)
        {
            hashmap.put("content_info", fh1.o);
        }
        s4 = lq.a(hashmap).toString();
        return s4;
_L4:
        s5 = null;
          goto _L28
_L11:
        s6 = null;
          goto _L29
_L5:
        s5 = "none";
          goto _L28
_L6:
        s5 = "dashed";
          goto _L28
_L7:
        s5 = "dotted";
          goto _L28
_L8:
        s5 = "solid";
          goto _L28
_L14:
        s6 = "dark";
          goto _L29
_L12:
        s6 = "light";
          goto _L29
_L13:
        s6 = "medium";
          goto _L29
    }

}
