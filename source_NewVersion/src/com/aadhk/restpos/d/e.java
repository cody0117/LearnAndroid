// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
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
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.b.f;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            f, g, h, i

public final class e extends Fragment
    implements TextWatcher
{

    android.widget.AdapterView.OnItemClickListener a;
    android.widget.AdapterView.OnItemClickListener b;
    android.view.View.OnClickListener c;
    private CustomerActivity d;
    private List e;
    private i f;
    private EditText g;
    private com.aadhk.restpos.b.e h;
    private ImageView i;
    private View j;
    private ListView k;
    private String l;
    private LayoutInflater m;
    private int n;

    public e()
    {
        n = -1;
        a = new com.aadhk.restpos.d.f(this);
        b = new g(this);
        c = new h(this);
    }

    static int a(e e1, int i1)
    {
        e1.n = i1;
        return i1;
    }

    static List a(e e1)
    {
        return e1.e;
    }

    static List a(e e1, List list)
    {
        e1.e = list;
        return list;
    }

    private void a()
    {
        e = h.a(l);
        f = new i(this, (byte)0);
        k.setAdapter(f);
    }

    static CustomerActivity b(e e1)
    {
        return e1.d;
    }

    static i c(e e1)
    {
        return e1.f;
    }

    static EditText d(e e1)
    {
        return e1.g;
    }

    static com.aadhk.restpos.b.e e(e e1)
    {
        return e1.h;
    }

    static LayoutInflater f(e e1)
    {
        return e1.m;
    }

    static int g(e e1)
    {
        return e1.n;
    }

    public final void afterTextChanged(Editable editable)
    {
        n = -1;
        a();
    }

    public final void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        h = new com.aadhk.restpos.b.e(com.aadhk.restpos.b.f.a().b());
        if ("contextPay".equals(d.c()))
        {
            k.setOnItemClickListener(a);
        } else
        {
            k.setOnItemClickListener(b);
        }
        a();
    }

    public final void onAttach(Activity activity)
    {
        d = (CustomerActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        m = LayoutInflater.from(d);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f0001, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = layoutinflater.inflate(0x7f030062, viewgroup, false);
        i = (ImageView)j.findViewById(0x7f0b0139);
        k = (ListView)j.findViewById(0x7f0b013a);
        g = (EditText)j.findViewById(0x7f0b0138);
        i.setOnClickListener(c);
        g.addTextChangedListener(this);
        return j;
    }

    public final void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            d.a(null);
            n = -1;
            f.notifyDataSetChanged();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public final void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
        l = g.getText().toString();
    }
}
