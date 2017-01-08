// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.g.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            k, l, m, n, 
//            p

public final class j extends Fragment
    implements TextWatcher
{

    android.widget.AdapterView.OnItemClickListener a;
    android.widget.AdapterView.OnItemClickListener b;
    android.view.View.OnClickListener c;
    private CustomerActivity d;
    private List e;
    private List f;
    private n g;
    private EditText h;
    private ImageView i;
    private View j;
    private ListView k;
    private String l;
    private LayoutInflater m;
    private int n;
    private c o;

    public j()
    {
        n = -1;
        a = new k(this);
        b = new l(this);
        c = new m(this);
    }

    static int a(j j1, int i1)
    {
        j1.n = i1;
        return i1;
    }

    static String a(j j1, String s)
    {
        j1.l = s;
        return s;
    }

    static List a(j j1)
    {
        return j1.e;
    }

    static List a(j j1, List list)
    {
        j1.e = list;
        return list;
    }

    private void a()
    {
        n = -1;
        f = new ArrayList();
        f.addAll(e);
        d.a(f);
        g = new n(this, (byte)0);
        k.setAdapter(g);
    }

    static CustomerActivity b(j j1)
    {
        return j1.d;
    }

    static n c(j j1)
    {
        return j1.g;
    }

    static EditText d(j j1)
    {
        return j1.h;
    }

    static String e(j j1)
    {
        return j1.l;
    }

    static void f(j j1)
    {
        if (!"".equals(j1.l))
        {
            j1.e.clear();
            Iterator iterator = j1.f.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Customer customer = (Customer)iterator.next();
                if (customer.getTel().equals(j1.l))
                {
                    j1.e.add(customer);
                }
            } while (true);
        }
        j1.g.notifyDataSetChanged();
    }

    static LayoutInflater g(j j1)
    {
        return j1.m;
    }

    static int h(j j1)
    {
        return j1.n;
    }

    static c i(j j1)
    {
        return j1.o;
    }

    static void j(j j1)
    {
        j1.a();
    }

    public final void a(List list)
    {
        e = list;
        a();
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        o = d.c();
        if ("contextPay".equals(d.b()))
        {
            k.setOnItemClickListener(a);
        } else
        {
            k.setOnItemClickListener(b);
        }
        (new d(new p(this, (byte)0), d, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onAttach(Activity activity)
    {
        d = (CustomerActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        m = LayoutInflater.from(d);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f0001, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = layoutinflater.inflate(0x7f030077, viewgroup, false);
        i = (ImageView)j.findViewById(0x7f09017e);
        k = (ListView)j.findViewById(0x7f09017f);
        h = (EditText)j.findViewById(0x7f09017d);
        i.setOnClickListener(c);
        h.addTextChangedListener(this);
        return j;
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            d.a(null);
            n = -1;
            g.notifyDataSetChanged();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public final void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
        l = h.getText().toString();
        e.clear();
        if ("".equals(l))
        {
            e.addAll(f);
        } else
        {
            Pattern pattern = Pattern.compile(l, 2);
            Iterator iterator = f.iterator();
            while (iterator.hasNext()) 
            {
                Customer customer = (Customer)iterator.next();
                if (pattern.matcher(customer.getTel()).find())
                {
                    e.add(customer);
                }
            }
        }
        g.notifyDataSetChanged();
    }
}
