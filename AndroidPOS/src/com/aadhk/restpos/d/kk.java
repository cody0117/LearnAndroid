// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
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
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.j;
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.a.bn;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.ae;
import com.aadhk.restpos.util.r;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            kp, kn, ko, kl, 
//            km

public final class kk extends Fragment
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
    private User i;
    private List j;
    private String k[];
    private int l[];
    private int m;
    private UserActivity n;
    private r o;
    private ae p;

    public kk()
    {
        m = 1;
    }

    static int a(kk kk1, int i1)
    {
        kk1.m = i1;
        return i1;
    }

    private void a()
    {
        h = new User();
        h.setRole(2);
        c();
    }

    static int[] a(kk kk1)
    {
        return kk1.l;
    }

    static UserActivity b(kk kk1)
    {
        return kk1.n;
    }

    private boolean b()
    {
        Iterator iterator = j.iterator();
        int i1 = 0;
        do
        {
            int j1;
label0:
            {
label1:
                {
                    boolean flag = iterator.hasNext();
                    boolean flag1 = false;
                    if (flag)
                    {
                        if (((User)iterator.next()).getRole() != 1)
                        {
                            break label1;
                        }
                        j1 = i1 + 1;
                        if (j1 <= 1)
                        {
                            break label0;
                        }
                        flag1 = true;
                    }
                    return flag1;
                }
                j1 = i1;
            }
            i1 = j1;
        } while (true);
    }

    static ae c(kk kk1)
    {
        return kk1.p;
    }

    private void c()
    {
        c.setText(h.getAccount());
        d.setText(h.getPassword());
        e.setText(h.getPassword());
        g.setSelection(-1 + h.getRole());
    }

    static void d(kk kk1)
    {
        kk1.a();
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
                f.setText(0x7f080253);
            }
            return;
        }
        f.setText(0x7f080254);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        p = n.a();
        o = new r(n);
        j = n.b();
        if (i == null)
        {
            a();
            return;
        } else
        {
            h = i.clone();
            b.setVisibility(0);
            c();
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        n = (UserActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        if (view != a) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        s = c.getText().toString();
        s1 = d.getText().toString();
        if (!s.equals("")) goto _L4; else goto _L3
_L3:
        boolean flag;
        c.setError(getString(0x7f080085));
        flag = false;
_L13:
        if (!flag) goto _L6; else goto _L5
_L5:
        if (o.j())
        {
            o.a("showDefaultAccount", false);
        }
        if (h.getId() <= 0) goto _L8; else goto _L7
_L7:
        if (h.getRole() != 1) goto _L10; else goto _L9
_L9:
        (new d(new kp(this, h), n, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
_L6:
        return;
_L4:
label0:
        {
            if (h.getId() == 0)
            {
                Iterator iterator1 = j.iterator();
                User user1;
                do
                {
                    if (iterator1.hasNext())
                    {
                        user1 = (User)iterator1.next();
                        if (!user1.getAccount().equals(s))
                        {
                            continue;
                        }
                        c.setError(getString(0x7f080339));
                        flag = false;
                        continue; /* Loop/switch isn't completed */
                    }
                    break label0;
                } while (!user1.getPassword().equals(s1));
                d.setError(getString(0x7f08025e));
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
            Iterator iterator = j.iterator();
            User user;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                user = (User)iterator.next();
            } while (user.getAccount().equals(s) || !user.getPassword().equals(s1));
            d.setError(getString(0x7f08025e));
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if (s1.equals(""))
        {
            d.setError(getString(0x7f080085));
            flag = false;
        } else
        if (e.getText().toString().equals(""))
        {
            e.setError(getString(0x7f080085));
            flag = false;
        } else
        {
            h.setAccount(s);
            h.setPassword(s1);
            h.setRole(m);
            flag = true;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (b() || h.getRole() != 1)
        {
            (new d(new kp(this, h), n, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            bo bo2 = new bo(n);
            bo2.a(0x7f08033a);
            bo2.show();
            n.c();
            return;
        }
_L8:
        (new d(new kn(this, h), n, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
_L2:
        if (view != b) goto _L6; else goto _L11
_L11:
        if (h.getRole() == 1)
        {
            if (b())
            {
                (new d(new ko(this, h.getId()), n, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                bo bo1 = new bo(n);
                bo1.a(0x7f08033b);
                bo1.show();
                return;
            }
        }
        (new d(new ko(this, h.getId()), n, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            i = (User)bundle1.getParcelable("bundleUser");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f0300a9, viewgroup, false);
        a = (Button)view.findViewById(0x7f09005a);
        a.setOnClickListener(this);
        b = (Button)view.findViewById(0x7f0900dc);
        b.setOnClickListener(this);
        f = (TextView)view.findViewById(0x7f09028e);
        c = (EditText)view.findViewById(0x7f09028a);
        d = (EditText)view.findViewById(0x7f09028c);
        e = (EditText)view.findViewById(0x7f09028d);
        d.addTextChangedListener(this);
        e.addTextChangedListener(this);
        EditText edittext = c;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new j();
        edittext.setFilters(ainputfilter);
        k = getResources().getStringArray(0x7f0e000d);
        l = getResources().getIntArray(0x7f0e0012);
        g = (Spinner)view.findViewById(0x7f09028b);
        g.setAdapter(new bn(n, k));
        g.setOnItemSelectedListener(new kl(this));
        c.setOnFocusChangeListener(new km(this));
        return view;
    }

    public final void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }
}
