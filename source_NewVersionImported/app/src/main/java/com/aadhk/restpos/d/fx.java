// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
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
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.b.x;
import com.aadhk.restpos.bean.User;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fy

public final class fx extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private UserActivity a;
    private List b;
    private ListView c;
    private x d;
    private TextView e;
    private fy f;
    private LayoutInflater g;
    private int h;
    private String i[];

    public fx()
    {
        h = -1;
    }

    static List a(fx fx1)
    {
        return fx1.b;
    }

    static LayoutInflater b(fx fx1)
    {
        return fx1.g;
    }

    static int c(fx fx1)
    {
        return fx1.h;
    }

    static String[] d(fx fx1)
    {
        return fx1.i;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        d = new x(a.a());
        b = d.a();
        f = new fy(this, (byte)0);
        c.setAdapter(f);
        if (b.size() > 0)
        {
            e.setVisibility(8);
            return;
        } else
        {
            e.setVisibility(0);
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        a = (UserActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        i = getResources().getStringArray(0x7f07000d);
        g = LayoutInflater.from(a);
        setHasOptionsMenu(true);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f0001, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030096, viewgroup, false);
        c = (ListView)view.findViewById(0x7f0b0086);
        c.setOnItemClickListener(this);
        e = (TextView)view.findViewById(0x7f0b012a);
        return view;
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        User user = (User)b.get(j);
        if (a.c())
        {
            h = j;
            f.notifyDataSetChanged();
        }
        a.a(user);
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            a.a(null);
            h = -1;
            f.notifyDataSetChanged();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
