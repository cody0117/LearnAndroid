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
import com.aadhk.restpos.util.o;
import com.bugsense.trace.BugSenseHandler;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.util.Calendar;

public final class g extends e
    implements android.view.View.OnClickListener
{

    private final Button f;
    private final Button g;
    private DatePicker h;

    public g(Context context, String s)
    {
        super(context, 0x7f030038);
        setTitle(0x7f080031);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (DatePicker)findViewById(0x7f0900d4);
        Calendar calendar;
        int i;
        int j;
        int k;
        Calendar calendar1;
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
        if (s == null || "".equals(s))
        {
            break MISSING_BLOCK_LABEL_165;
        }
        calendar1 = o.f(s);
        calendar = calendar1;
_L2:
        i = calendar.get(1);
        j = calendar.get(2);
        k = calendar.get(5);
        h.init(i, j, k, null);
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
            h.clearFocus();
            int i = 1 + h.getMonth();
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
            j = h.getDayOfMonth();
            if (j >= 10)
            {
                s1 = (new StringBuilder()).append(j).toString();
            } else
            {
                s1 = (new StringBuilder("0")).append(j).toString();
            }
            s2 = (new StringBuilder()).append(h.getYear()).append("-").append(s).append("-").append(s1).toString();
            a.a(s2);
        }
        dismiss();
    }
}
