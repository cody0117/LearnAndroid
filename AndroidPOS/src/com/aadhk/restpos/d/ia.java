// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.a.bi;
import com.aadhk.restpos.bean.Reservation;
import com.aadhk.restpos.c.di;
import com.aadhk.restpos.util.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ib, ic, id, ih, 
//            if, ig, ie

public final class ia extends Fragment
{

    private ReservationActivity a;
    private View b;
    private ExpandableListView c;
    private Map d;
    private List e;
    private boolean f;

    public ia()
    {
        f = false;
    }

    static List a(ia ia1)
    {
        return ia1.e;
    }

    static List a(ia ia1, List list)
    {
        ia1.e = list;
        return list;
    }

    static Map a(ia ia1, Map map)
    {
        ia1.d = map;
        return map;
    }

    private void a()
    {
        TextView textview = (TextView)b.findViewById(0x7f09016e);
        c = (ExpandableListView)b.findViewById(0x7f09016f);
        if (d.size() > 0)
        {
            textview.setVisibility(8);
            c.setVisibility(0);
            c.setAdapter(new bi(a, d, e));
        } else
        {
            textview.setVisibility(0);
            c.setVisibility(8);
        }
        c.setGroupIndicator(null);
        c.setOnGroupClickListener(new ib(this));
        for (int i = 0; i < d.size(); i++)
        {
            c.expandGroup(i);
        }

        c.setOnChildClickListener(new ic(this));
        c.setOnCreateContextMenuListener(new id(this));
    }

    private void a(int i)
    {
        (new d(new ih(this, i), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static void a(ia ia1, int i)
    {
        ia1.a(i);
    }

    static Map b(ia ia1)
    {
        return ia1.d;
    }

    private void b()
    {
        if (!e.isEmpty())
        {
            Collections.sort(e, new if(this));
        }
    }

    static ReservationActivity c(ia ia1)
    {
        return ia1.a;
    }

    static boolean d(ia ia1)
    {
        return ia1.f;
    }

    static void e(ia ia1)
    {
        ia1.b();
    }

    static void f(ia ia1)
    {
        ia1.a();
    }

    public final void a(Map map)
    {
        d = map;
        e = new ArrayList(map.keySet());
        b();
        a();
    }

    public final void a(boolean flag)
    {
        f = flag;
        (new d(new ig(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        a(f);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (ReservationActivity)activity;
    }

    public final boolean onContextItemSelected(MenuItem menuitem)
    {
        android.widget.ExpandableListView.ExpandableListContextMenuInfo expandablelistcontextmenuinfo = (android.widget.ExpandableListView.ExpandableListContextMenuInfo)menuitem.getMenuInfo();
        int i = ExpandableListView.getPackedPositionGroup(expandablelistcontextmenuinfo.packedPosition);
        int j = ExpandableListView.getPackedPositionChild(expandablelistcontextmenuinfo.packedPosition);
        Reservation reservation = (Reservation)((List)d.get(e.get(i))).get(j);
        switch (menuitem.getItemId())
        {
        default:
            return super.onContextItemSelected(menuitem);

        case 2131297053: 
            if (reservation.getTableName().equals(""))
            {
                di di1 = new di(a, String.valueOf(0), a.a());
                di1.setTitle(0x7f0800e0);
                di1.a(new ie(this, reservation));
                di1.show();
            } else
            {
                a.b(reservation);
                a(reservation.getId());
            }
            return true;

        case 2131297054: 
            String s1 = getString(0x7f0800e3);
            Object aobj[] = new Object[4];
            aobj[0] = reservation.getName();
            aobj[1] = Integer.valueOf(reservation.getGuestNumber());
            aobj[2] = reservation.getTableName();
            aobj[3] = (new StringBuilder()).append(reservation.getReservedDate()).append(" ").append(reservation.getReservedTime()).toString();
            String s2 = String.format(s1, aobj);
            s.a(a, s2, reservation.getPhone());
            return true;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030072, viewgroup, false);
        return b;
    }
}
