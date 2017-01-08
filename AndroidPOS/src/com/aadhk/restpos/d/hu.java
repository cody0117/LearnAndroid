// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TimePicker;
import android.widget.Toast;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.c;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.bean.Reservation;
import com.aadhk.restpos.c.di;
import com.aadhk.restpos.g.x;
import com.aadhk.restpos.util.o;
import com.bugsense.trace.BugSenseHandler;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            hv, hz, hx, hw

public final class hu extends Fragment
    implements android.view.View.OnClickListener
{

    private ReservationActivity a;
    private View b;
    private EditText c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private ImageButton h;
    private ImageButton i;
    private Button j;
    private Button k;
    private Button l;
    private DatePicker m;
    private TimePicker n;
    private Reservation o;
    private x p;

    public hu()
    {
    }

    static Button a(hu hu1)
    {
        return hu1.j;
    }

    private List a(ViewGroup viewgroup)
    {
        ArrayList arraylist;
        int i1;
        arraylist = new ArrayList();
        if (viewgroup == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        i1 = 0;
_L2:
        View view;
        if (i1 >= viewgroup.getChildCount())
        {
            break MISSING_BLOCK_LABEL_87;
        }
        view = viewgroup.getChildAt(i1);
        if (!(view instanceof NumberPicker))
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add((NumberPicker)view);
_L4:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        if (!(view instanceof LinearLayout)) goto _L4; else goto _L3
_L3:
        List list = a((ViewGroup)view);
        if (list.size() <= 0) goto _L4; else goto _L5
_L5:
        return list;
        return arraylist;
    }

    private void a()
    {
        c.setText(o.getName());
        d.setText(o.getPhone());
        e.setText(o.getEmail());
        f.setText(o.getNotes());
        g.setText((new StringBuilder()).append(o.getGuestNumber()).toString());
        DatePicker datepicker;
        Calendar calendar;
        TimePicker timepicker;
        Calendar calendar1;
        int i1;
        int j1;
        Calendar calendar2;
        Calendar calendar3;
        if (TextUtils.isEmpty(o.getTableName()))
        {
            j.setText(getString(0x7f0800e0));
        } else
        {
            j.setText(o.getTableName());
        }
        if (o.getId() == 0)
        {
            l.setVisibility(8);
        } else
        {
            l.setVisibility(0);
        }
        datepicker = m;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            try
            {
                Class class1 = datepicker.getClass();
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                Method method = class1.getMethod("setCalendarViewShown", aclass);
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
        if (o.getReservedDate() == null || "".equals(o.getReservedDate()))
        {
            break MISSING_BLOCK_LABEL_238;
        }
        calendar3 = com.aadhk.restpos.util.o.f(o.getReservedDate());
        calendar = calendar3;
_L1:
        datepicker.init(calendar.get(1), calendar.get(2), calendar.get(5), null);
        timepicker = n;
        calendar1 = Calendar.getInstance();
        if (o.getReservedTime() == null || "".equals(o.getReservedTime()))
        {
            break MISSING_BLOCK_LABEL_309;
        }
        calendar2 = com.aadhk.restpos.util.o.g(o.getReservedTime());
        calendar1 = calendar2;
_L2:
        i1 = calendar1.get(11);
        j1 = calendar1.get(12);
        timepicker.setIs24HourView(Boolean.valueOf(true));
        timepicker.setCurrentHour(Integer.valueOf(i1));
        timepicker.setCurrentMinute(Integer.valueOf(j1));
        return;
        ParseException parseexception1;
        parseexception1;
        BugSenseHandler.sendException(parseexception1);
        parseexception1.printStackTrace();
          goto _L1
        ParseException parseexception;
        parseexception;
        BugSenseHandler.sendException(parseexception);
        parseexception.printStackTrace();
          goto _L2
    }

    private void a(FrameLayout framelayout)
    {
        NumberPicker numberpicker;
        android.widget.LinearLayout.LayoutParams layoutparams;
        for (Iterator iterator = a(((ViewGroup) (framelayout))).iterator(); iterator.hasNext(); numberpicker.setLayoutParams(layoutparams))
        {
            numberpicker = (NumberPicker)iterator.next();
            layoutparams = new android.widget.LinearLayout.LayoutParams(70, 200);
            layoutparams.setMargins(10, 0, 10, 0);
        }

    }

    static Reservation b(hu hu1)
    {
        return hu1.o;
    }

    static ReservationActivity c(hu hu1)
    {
        return hu1.a;
    }

    static x d(hu hu1)
    {
        return hu1.p;
    }

    static void e(hu hu1)
    {
        hu1.o = new Reservation();
        hu1.a();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        p = a.a();
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            o = (Reservation)bundle1.getParcelable("reservation");
        }
        if (o == null)
        {
            o = new Reservation();
        }
        a();
    }

    public final void onAttach(Activity activity)
    {
        a = (ReservationActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 5: default 56
    //                   2131296346: 263
    //                   2131296476: 950
    //                   2131296500: 128
    //                   2131296501: 193
    //                   2131296880: 57;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L6:
        int k2 = o.getId();
        String s14 = null;
        if (k2 > 0)
        {
            s14 = String.valueOf(0);
        }
        di di1 = new di(a, s14, a.a());
        di1.setTitle(0x7f0800e0);
        di1.a(new hv(this));
        di1.show();
        return;
_L4:
        String s13 = g.getText().toString();
        if (!s13.equals(""))
        {
            int j2 = com.aadhk.product.library.c.h.e(s13);
            g.setText((new StringBuilder()).append(j2 + 1).toString());
            return;
        } else
        {
            g.setText("1");
            return;
        }
_L5:
        String s12 = g.getText().toString();
        if (!s12.equals(""))
        {
            int i2 = com.aadhk.product.library.c.h.e(s12);
            if (i2 > 0)
            {
                g.setText((new StringBuilder()).append(i2 - 1).toString());
                return;
            }
        } else
        {
            g.setText("0");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        String s = c.getText().toString();
        String s1 = d.getText().toString();
        String s2 = e.getText().toString();
        String s3 = f.getText().toString();
        String s4 = g.getText().toString();
        String s5 = j.getText().toString();
        boolean flag;
        if (TextUtils.isEmpty(s))
        {
            c.setError(getString(0x7f080085));
            c.requestFocus();
            flag = false;
        } else
        {
            c.setError(null);
            if (TextUtils.isEmpty(s1))
            {
                d.setError(getString(0x7f080085));
                d.requestFocus();
                flag = false;
            } else
            {
                d.setError(null);
                int i1;
                String s6;
                int j1;
                String s7;
                String s8;
                int k1;
                String s9;
                int l1;
                String s10;
                String s11;
                if (o.getTableId() == 0)
                {
                    o.setTableName("");
                } else
                {
                    o.setTableName(s5);
                }
                o.setName(s);
                o.setPhone(s1);
                o.setEmail(s2);
                o.setNotes(s3);
                o.setGuestNumber(com.aadhk.product.library.c.h.e(s4));
                m.clearFocus();
                i1 = 1 + m.getMonth();
                if (i1 >= 10)
                {
                    s6 = (new StringBuilder()).append(i1).toString();
                } else
                {
                    s6 = (new StringBuilder("0")).append(i1).toString();
                }
                j1 = m.getDayOfMonth();
                if (j1 >= 10)
                {
                    s7 = (new StringBuilder()).append(j1).toString();
                } else
                {
                    s7 = (new StringBuilder("0")).append(j1).toString();
                }
                s8 = (new StringBuilder()).append(m.getYear()).append("-").append(s6).append("-").append(s7).toString();
                o.setReservedDate(s8);
                k1 = n.getCurrentHour().intValue();
                if (k1 >= 10)
                {
                    s9 = (new StringBuilder()).append(k1).toString();
                } else
                {
                    s9 = (new StringBuilder("0")).append(k1).toString();
                }
                l1 = n.getCurrentMinute().intValue();
                if (l1 >= 10)
                {
                    s10 = (new StringBuilder()).append(l1).toString();
                } else
                {
                    s10 = (new StringBuilder("0")).append(l1).toString();
                }
                s11 = (new StringBuilder()).append(s9).append(":").append(s10).toString();
                o.setReservedTime(s11);
                if (!com.aadhk.product.library.c.c.c(o.getReservedDate(), o.getReservedTime()))
                {
                    Toast.makeText(a, getString(0x7f080245), 1).show();
                    flag = false;
                } else
                {
                    flag = true;
                }
            }
        }
        if (flag)
        {
            if (o.getId() > 0)
            {
                (new d(new hz(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                (new d(new hx(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (o.getId() > 0)
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
            d1.setTitle(0x7f080244);
            d1.a(new hw(this));
            d1.show();
            return;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        if (!a.b())
        {
            menu.removeItem(0x7f09031c);
            menu.removeItem(0x7f090301);
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f03009e, viewgroup, false);
        c = (EditText)b.findViewById(0x7f09026b);
        d = (EditText)b.findViewById(0x7f09026c);
        e = (EditText)b.findViewById(0x7f09026d);
        f = (EditText)b.findViewById(0x7f09026e);
        g = (EditText)b.findViewById(0x7f09026f);
        j = (Button)b.findViewById(0x7f090270);
        h = (ImageButton)b.findViewById(0x7f0900f4);
        i = (ImageButton)b.findViewById(0x7f0900f5);
        m = (DatePicker)b.findViewById(0x7f0900d4);
        n = (TimePicker)b.findViewById(0x7f09016c);
        k = (Button)b.findViewById(0x7f09005a);
        l = (Button)b.findViewById(0x7f0900dc);
        j.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        k.setOnClickListener(this);
        l.setOnClickListener(this);
        l.setVisibility(8);
        if (!a.b())
        {
            a(m);
            a(n);
        }
        return b;
    }
}
