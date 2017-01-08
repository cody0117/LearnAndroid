// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import com.aadhk.product.library.c.j;
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.a.bf;
import com.aadhk.restpos.b.x;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos.d:
//            fv, fw

public final class fu extends Fragment
    implements TextWatcher, android.view.View.OnClickListener
{

    private Button a;
    private Button b;
    private EditText c;
    private EditText d;
    private EditText e;
    private TextView f;
    private Spinner g;
    private User h;
    private String i[];
    private int j[];
    private int k;
    private UserActivity l;
    private l m;
    private x n;

    public fu()
    {
        k = 1;
    }

    static int a(fu fu1, int i1)
    {
        fu1.k = i1;
        return i1;
    }

    static int[] a(fu fu1)
    {
        return fu1.j;
    }

    static UserActivity b(fu fu1)
    {
        return fu1.l;
    }

    public final void afterTextChanged(Editable editable)
    {
label0:
        {
            String s = d.getText().toString();
            String s1 = e.getText().toString();
            if (!s.equals(""))
            {
                if (!s.equals(s1))
                {
                    break label0;
                }
                f.setText(0x7f09020d);
            }
            return;
        }
        f.setText(0x7f09020e);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        n = new x(l.a());
        m = new l(l);
        if (h == null)
        {
            h = new User();
            h.setRole(2);
        } else
        {
            b.setVisibility(0);
        }
        c.setText(h.getAccount());
        d.setText(h.getPassword());
        e.setText(h.getPassword());
        g.setSelection(-1 + h.getRole());
    }

    public final void onAttach(Activity activity)
    {
        l = (UserActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        if (view == a)
        {
            String s = c.getText().toString();
            boolean flag;
            if (s.equals(""))
            {
                c.setError(getString(0x7f090055));
                flag = false;
            } else
            if (h.getId() == 0 && n.a(s) != null)
            {
                c.setError(getString(0x7f0902db));
                flag = false;
            } else
            {
                String s1 = d.getText().toString();
                if (s1.equals(""))
                {
                    d.setError(getString(0x7f090055));
                    flag = false;
                } else
                if (e.getText().toString().equals(""))
                {
                    e.setError(getString(0x7f090055));
                    flag = false;
                } else
                {
                    h.setAccount(s);
                    h.setPassword(s1);
                    h.setRole(k);
                    flag = true;
                }
            }
            if (flag)
            {
                if (m.i())
                {
                    m.a("showDefaultAccount", false);
                }
                if (h.getId() > 0)
                {
                    n.b(h);
                } else
                {
                    n.a(h);
                }
                l.b();
            }
        } else
        {
            if (view == b)
            {
                n.a(h.getId());
                l.b();
                return;
            }
            if (view == c)
            {
                c.selectAll();
                return;
            }
            if (view == d)
            {
                d.selectAll();
                return;
            }
            if (view == e)
            {
                e.selectAll();
                return;
            }
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            h = (User)bundle1.getParcelable("bundleUser");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f03008c, viewgroup, false);
        a = (Button)view.findViewById(0x7f0b0056);
        a.setOnClickListener(this);
        b = (Button)view.findViewById(0x7f0b00c9);
        b.setOnClickListener(this);
        f = (TextView)view.findViewById(0x7f0b0227);
        c = (EditText)view.findViewById(0x7f0b0223);
        d = (EditText)view.findViewById(0x7f0b0225);
        e = (EditText)view.findViewById(0x7f0b0226);
        c.setOnClickListener(this);
        d.setOnClickListener(this);
        e.setOnClickListener(this);
        c.setSelectAllOnFocus(true);
        d.setSelectAllOnFocus(true);
        e.setSelectAllOnFocus(true);
        d.addTextChangedListener(this);
        e.addTextChangedListener(this);
        EditText edittext = c;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new j();
        edittext.setFilters(ainputfilter);
        i = getResources().getStringArray(0x7f07000d);
        j = getResources().getIntArray(0x7f070012);
        g = (Spinner)view.findViewById(0x7f0b0224);
        g.setAdapter(new bf(l, i));
        g.setOnItemSelectedListener(new fv(this));
        c.setOnFocusChangeListener(new fw(this));
        return view;
    }

    public final void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }
}
