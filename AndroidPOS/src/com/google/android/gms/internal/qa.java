// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;

// Referenced classes of package com.google.android.gms.internal:
//            qn, le

public final class qa
{

    private String a;
    private String b;
    private String c;
    private String d[] = {
        ".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"
    };
    private le e;

    public qa(le le1)
    {
        a = "googleads.g.doubleclick.net";
        b = "/pagead/ads";
        c = "ad.doubleclick.net";
        e = le1;
    }

    private Uri a(Uri uri, Context context, String s)
    {
        boolean flag;
        try
        {
            flag = b(uri);
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            throw new qn("Provided Uri is not in a valid state");
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        if (uri.toString().contains("dc_ms="))
        {
            throw new qn("Parameter already exists: dc_ms");
        }
        break MISSING_BLOCK_LABEL_65;
        if (uri.getQueryParameter("ms") != null)
        {
            throw new qn("Query parameter already exists: ms");
        }
        String s1 = e.a(context, s);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        String s2;
        int i;
        s2 = uri.toString();
        i = s2.indexOf(";adurl");
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        return Uri.parse((new StringBuilder(s2.substring(0, i + 1))).append("dc_ms").append("=").append(s1).append(";").append(s2.substring(i + 1)).toString());
        String s3 = uri.getEncodedPath();
        int j = s2.indexOf(s3);
        return Uri.parse((new StringBuilder(s2.substring(0, j + s3.length()))).append(";").append("dc_ms").append("=").append(s1).append(";").append(s2.substring(j + s3.length())).toString());
        String s4;
        int k;
        s4 = uri.toString();
        k = s4.indexOf("&adurl");
        if (k != -1)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        k = s4.indexOf("?adurl");
        if (k == -1)
        {
            break MISSING_BLOCK_LABEL_336;
        }
        return Uri.parse((new StringBuilder(s4.substring(0, k + 1))).append("ms").append("=").append(s1).append("&").append(s4.substring(k + 1)).toString());
        Uri uri1 = uri.buildUpon().appendQueryParameter("ms", s1).build();
        return uri1;
    }

    private boolean b(Uri uri)
    {
        if (uri == null)
        {
            throw new NullPointerException();
        }
        boolean flag;
        try
        {
            flag = uri.getHost().equals(c);
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        return flag;
    }

    public final Uri a(Uri uri, Context context)
    {
        Uri uri1;
        try
        {
            uri1 = a(uri, context, uri.getQueryParameter("ai"));
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            throw new qn("Provided Uri is not in a valid state");
        }
        return uri1;
    }

    public final le a()
    {
        return e;
    }

    public final void a(MotionEvent motionevent)
    {
        e.a(motionevent);
    }

    public final boolean a(Uri uri)
    {
        if (uri == null)
        {
            throw new NullPointerException();
        }
        String s;
        String as[];
        int i;
        int j;
        boolean flag;
        boolean flag1;
        try
        {
            s = uri.getHost();
            as = d;
            i = as.length;
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        j = 0;
        flag = false;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        flag1 = s.endsWith(as[j]);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        flag = true;
        return flag;
        for (j++; false;)
        {
        }

        break MISSING_BLOCK_LABEL_31;
    }
}
