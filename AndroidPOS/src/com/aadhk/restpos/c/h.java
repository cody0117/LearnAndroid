// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.Toast;
import com.aadhk.product.library.b.e;
import com.bugsense.trace.BugSenseHandler;
import java.lang.reflect.Method;
import java.util.Calendar;

// Referenced classes of package com.aadhk.restpos.c:
//            i

public final class h extends e
    implements android.view.View.OnClickListener
{

    private final Button f = (Button)findViewById(0x7f0900db);
    private final Button g = (Button)findViewById(0x7f09005b);
    private DatePicker h;
    private DatePicker i;
    private i j;

    public h(Context context)
    {
        super(context, 0x7f030039);
        setTitle(0x7f080033);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (DatePicker)findViewById(0x7f0900d5);
        i = (DatePicker)findViewById(0x7f0900d6);
        Calendar calendar;
        int k;
        int l;
        int i1;
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
                Class class2 = i.getClass();
                Class aclass1[] = new Class[1];
                aclass1[0] = Boolean.TYPE;
                Method method1 = class2.getMethod("setCalendarViewShown", aclass1);
                DatePicker datepicker1 = i;
                Object aobj1[] = new Object[1];
                aobj1[0] = Boolean.valueOf(false);
                method1.invoke(datepicker1, aobj1);
            }
            catch (Exception exception)
            {
                BugSenseHandler.sendException(exception);
                exception.printStackTrace();
            }
        }
        calendar = Calendar.getInstance();
        k = calendar.get(1);
        l = calendar.get(2);
        i1 = calendar.get(5);
        h.init(k, l, i1, null);
        i.init(k, l, i1, null);
    }

    public final void a(i k)
    {
        j = k;
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (j == null) goto _L4; else goto _L3
_L3:
        h.clearFocus();
        int k = 1 + h.getMonth();
        String s;
        int l;
        String s1;
        String s2;
        int i1;
        String s3;
        int j1;
        String s4;
        String s5;
        if (k >= 10)
        {
            s = (new StringBuilder()).append(k).toString();
        } else
        {
            s = (new StringBuilder("0")).append(k).toString();
        }
        l = h.getDayOfMonth();
        if (l >= 10)
        {
            s1 = (new StringBuilder()).append(l).toString();
        } else
        {
            s1 = (new StringBuilder("0")).append(l).toString();
        }
        s2 = (new StringBuilder()).append(h.getYear()).append("-").append(s).append("-").append(s1).toString();
        i.clearFocus();
        i1 = 1 + i.getMonth();
        if (i1 >= 10)
        {
            s3 = (new StringBuilder()).append(i1).toString();
        } else
        {
            s3 = (new StringBuilder("0")).append(i1).toString();
        }
        j1 = i.getDayOfMonth();
        if (j1 >= 10)
        {
            s4 = (new StringBuilder()).append(j1).toString();
        } else
        {
            s4 = (new StringBuilder("0")).append(j1).toString();
        }
        s5 = (new StringBuilder()).append(i.getYear()).append("-").append(s3).append("-").append(s4).toString();
        if (s5.compareTo(s2) < 0) goto _L6; else goto _L5
_L5:
        j.a(s2, s5);
        dismiss();
_L4:
        return;
_L6:
        Toast.makeText(e, 0x7f0801ee, 1).show();
        return;
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }
}
