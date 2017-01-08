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
//            l

public final class k extends e
    implements android.view.View.OnClickListener
{

    private final Button f = (Button)findViewById(0x7f0b00b3);
    private final Button g = (Button)findViewById(0x7f0b0057);
    private DatePicker h;
    private DatePicker i;
    private l j;

    public k(Context context)
    {
        super(context, 0x7f030030);
        setTitle(0x7f090004);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h = (DatePicker)findViewById(0x7f0b00b8);
        i = (DatePicker)findViewById(0x7f0b00b9);
        Calendar calendar;
        int i1;
        int j1;
        int k1;
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
        i1 = calendar.get(1);
        j1 = calendar.get(2);
        k1 = calendar.get(5);
        h.init(i1, j1, k1, null);
        i.init(i1, j1, k1, null);
    }

    public final void a(l l1)
    {
        j = l1;
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (j == null) goto _L4; else goto _L3
_L3:
        h.clearFocus();
        int i1 = 1 + h.getMonth();
        String s;
        int j1;
        String s1;
        String s2;
        int k1;
        String s3;
        int l1;
        String s4;
        String s5;
        if (i1 >= 10)
        {
            s = (new StringBuilder()).append(i1).toString();
        } else
        {
            s = (new StringBuilder("0")).append(i1).toString();
        }
        j1 = h.getDayOfMonth();
        if (j1 >= 10)
        {
            s1 = (new StringBuilder()).append(j1).toString();
        } else
        {
            s1 = (new StringBuilder("0")).append(j1).toString();
        }
        s2 = (new StringBuilder()).append(h.getYear()).append("-").append(s).append("-").append(s1).toString();
        i.clearFocus();
        k1 = 1 + i.getMonth();
        if (k1 >= 10)
        {
            s3 = (new StringBuilder()).append(k1).toString();
        } else
        {
            s3 = (new StringBuilder("0")).append(k1).toString();
        }
        l1 = i.getDayOfMonth();
        if (l1 >= 10)
        {
            s4 = (new StringBuilder()).append(l1).toString();
        } else
        {
            s4 = (new StringBuilder("0")).append(l1).toString();
        }
        s5 = (new StringBuilder()).append(i.getYear()).append("-").append(s3).append("-").append(s4).toString();
        if (s5.compareTo(s2) < 0) goto _L6; else goto _L5
_L5:
        j.a(s2, s5);
        dismiss();
_L4:
        return;
_L6:
        Toast.makeText(e, 0x7f0901b3, 1).show();
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
