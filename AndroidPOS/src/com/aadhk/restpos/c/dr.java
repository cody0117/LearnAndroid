// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TimePicker;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.util.o;
import com.bugsense.trace.BugSenseHandler;
import java.text.ParseException;
import java.util.Calendar;

public final class dr extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private TimePicker h;

    public dr(Context context, String s)
    {
        Calendar calendar;
        super(context, 0x7f03006e);
        setTitle(0x7f080032);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (TimePicker)findViewById(0x7f09016c);
        calendar = Calendar.getInstance();
        if (s == null || "".equals(s))
        {
            break MISSING_BLOCK_LABEL_94;
        }
        Calendar calendar1 = o.g(s);
        calendar = calendar1;
_L2:
        int i = calendar.get(11);
        int j = calendar.get(12);
        h.setIs24HourView(Boolean.valueOf(true));
        h.setCurrentHour(Integer.valueOf(i));
        h.setCurrentMinute(Integer.valueOf(j));
        return;
        ParseException parseexception;
        parseexception;
        BugSenseHandler.sendException(parseexception);
        parseexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void onClick(View view)
    {
        if (view == f && a != null)
        {
            int i = h.getCurrentHour().intValue();
            String s;
            int j;
            String s1;
            String s2;
            if (i >= 10)
            {
                s = (new StringBuilder()).append(i).toString();
            } else
            {
                s = (new StringBuilder("0")).append(i).toString();
            }
            j = h.getCurrentMinute().intValue();
            if (j >= 10)
            {
                s1 = (new StringBuilder()).append(j).toString();
            } else
            {
                s1 = (new StringBuilder("0")).append(j).toString();
            }
            s2 = (new StringBuilder()).append(s).append(":").append(s1).toString();
            a.a(s2);
        }
        dismiss();
    }
}
