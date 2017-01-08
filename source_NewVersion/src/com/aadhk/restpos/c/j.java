// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.bugsense.trace.BugSenseHandler;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class j extends e
    implements android.view.View.OnClickListener
{

    private final Button f;
    private final Button g;
    private DatePicker h;

    public j(Context context, String s)
    {
        Calendar calendar;
        Calendar calendar1;
        super(context, 0x7f03002f);
        setTitle(0x7f090002);
        f = (Button)findViewById(0x7f0b00b3);
        g = (Button)findViewById(0x7f0b0057);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (DatePicker)findViewById(0x7f0b00b7);
        int i;
        int k;
        int l;
        SimpleDateFormat simpledateformat;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            try
            {
                Class class1 = h.getClass();
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                Method method = class1.getMethod("setCalendarViewShown", aclass);
                DatePicker datepicker = h;
                Object aobj[] = new Object[1];
                aobj[0] = Boolean.valueOf(false);
                method.invoke(datepicker, aobj);
            }
            catch (Exception exception)
            {
                BugSenseHandler.sendException(exception);
                exception.printStackTrace();
            }
        }
        calendar = Calendar.getInstance();
        if (s == null || "".equals(s)) goto _L2; else goto _L1
_L1:
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        calendar1 = Calendar.getInstance();
        calendar1.setTime(simpledateformat.parse((new StringBuilder()).append(s).append(" 00:00:00").toString()));
_L4:
        i = calendar1.get(1);
        k = calendar1.get(2);
        l = calendar1.get(5);
        h.init(i, k, l, null);
        return;
        ParseException parseexception;
        parseexception;
        BugSenseHandler.sendException(parseexception);
        parseexception.printStackTrace();
_L2:
        calendar1 = calendar;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onClick(View view)
    {
        if (view == f && a != null)
        {
            h.clearFocus();
            int i = 1 + h.getMonth();
            String s;
            int k;
            String s1;
            String s2;
            if (i >= 10)
            {
                s = (new StringBuilder()).append(i).toString();
            } else
            {
                s = (new StringBuilder("0")).append(i).toString();
            }
            k = h.getDayOfMonth();
            if (k >= 10)
            {
                s1 = (new StringBuilder()).append(k).toString();
            } else
            {
                s1 = (new StringBuilder("0")).append(k).toString();
            }
            s2 = (new StringBuilder()).append(h.getYear()).append("-").append(s).append("-").append(s1).toString();
            a.a(s2);
        }
        dismiss();
    }
}
