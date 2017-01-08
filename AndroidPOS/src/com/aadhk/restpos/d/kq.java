// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.g.ae;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            kr, kt

public final class kq extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private UserActivity a;
    private List b;
    private ListView c;
    private TextView d;
    private kr e;
    private LayoutInflater f;
    private ae g;
    private int h;
    private String i[];

    public kq()
    {
        h = -1;
    }

    static List a(kq kq1)
    {
        return kq1.b;
    }

    static List a(kq kq1, List list)
    {
        kq1.b = list;
        return list;
    }

    private void a()
    {
        e = new kr(this, (byte)0);
        c.setAdapter(e);
        if (b.size() > 0)
        {
            d.setVisibility(8);
            return;
        } else
        {
            d.setVisibility(0);
            return;
        }
    }

    static LayoutInflater b(kq kq1)
    {
        return kq1.f;
    }

    static int c(kq kq1)
    {
        return kq1.h;
    }

    static String[] d(kq kq1)
    {
        return kq1.i;
    }

    static ae e(kq kq1)
    {
        return kq1.g;
    }

    static UserActivity f(kq kq1)
    {
        return kq1.a;
    }

    static void g(kq kq1)
    {
        kq1.a();
    }

    public final void a(List list)
    {
        b = list;
        a();
        a.b(b);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        g = a.a();
        (new d(new kt(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onAttach(Activity activity)
    {
        a = (UserActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        i = getResources().getStringArray(0x7f0e000d);
        f = LayoutInflater.from(a);
        setHasOptionsMenu(true);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f0001, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        c = (ListView)view.findViewById(0x7f0900a4);
        c.setOnItemClickListener(this);
        d = (TextView)view.findViewById(0x7f09016e);
        return view;
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        User user = (User)b.get(j);
        if (a.d())
        {
            h = j;
            e.notifyDataSetChanged();
        }
        a.a(user);
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            a.a(null);
            h = -1;
            e.notifyDataSetChanged();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
