// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            mg, lq, br, lf, 
//            ew, ex

public final class ev
{

    private final mg a;
    private final Map b;
    private final Context c;
    private String d;
    private long e;
    private long f;
    private String g;
    private String h;

    public ev(mg mg1, Map map)
    {
        a = mg1;
        b = map;
        c = mg1.k();
        d = a("description");
        g = a("summary");
        e = lq.d((String)b.get("start"));
        f = lq.d((String)b.get("end"));
        h = a("location");
    }

    static Context a(ev ev1)
    {
        return ev1.c;
    }

    private String a(String s)
    {
        if (TextUtils.isEmpty((CharSequence)b.get(s)))
        {
            return "";
        } else
        {
            return (String)b.get(s);
        }
    }

    static mg b(ev ev1)
    {
        return ev1.a;
    }

    public final void a()
    {
        if (!(new br(c)).d())
        {
            return;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(c);
            builder.setTitle(lf.a(com.google.android.gms.R.string.create_calendar_title, "Create calendar event"));
            builder.setMessage(lf.a(com.google.android.gms.R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
            builder.setPositiveButton(lf.a(com.google.android.gms.R.string.accept, "Accept"), new ew(this));
            builder.setNegativeButton(lf.a(com.google.android.gms.R.string.decline, "Decline"), new ex(this));
            builder.create().show();
            return;
        }
    }

    final Intent b()
    {
        Intent intent = (new Intent("android.intent.action.EDIT")).setData(android.provider.CalendarContract.Events.CONTENT_URI);
        intent.putExtra("title", g);
        intent.putExtra("eventLocation", h);
        intent.putExtra("description", d);
        intent.putExtra("beginTime", e);
        intent.putExtra("endTime", f);
        intent.setFlags(0x10000000);
        return intent;
    }
}
