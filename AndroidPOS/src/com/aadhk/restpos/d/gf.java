// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.n;
import com.aadhk.restpos.a.bn;
import com.aadhk.restpos.bean.POSPrinterSetting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            gn, gh, gi, gg

public final class gf extends gn
{

    c a;
    private EditText p;
    private Spinner q;
    private TextView r;
    private bn s;
    private String t[];

    public gf()
    {
        a = new gh(this);
    }

    static bn a(gf gf1, bn bn1)
    {
        gf1.s = bn1;
        return bn1;
    }

    static String[] a(gf gf1)
    {
        return gf1.t;
    }

    static String[] a(gf gf1, String as[])
    {
        gf1.t = as;
        return as;
    }

    static EditText b(gf gf1)
    {
        return gf1.p;
    }

    static bn c(gf gf1)
    {
        return gf1.s;
    }

    static Spinner d(gf gf1)
    {
        return gf1.q;
    }

    private boolean h()
    {
        String s1 = p.getText().toString();
        if (TextUtils.isEmpty(s1))
        {
            p.setError(getString(0x7f080085));
            p.requestFocus();
            return false;
        }
        if (!n.b.matcher(s1).matches())
        {
            p.setError(getString(0x7f080237));
            p.requestFocus();
            return false;
        } else
        {
            p.setError(null);
            return true;
        }
    }

    public final void a()
    {
        (new d(new gi(this, (byte)0), h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    protected final void b()
    {
        p = (EditText)g.findViewById(0x7f09021b);
        p.setText(i.getHostingIp());
        r = (TextView)g.findViewById(0x7f090247);
        r.setOnClickListener(this);
        q = (Spinner)g.findViewById(0x7f090246);
        if (TextUtils.isEmpty(i.getServiceName()))
        {
            t = (new String[] {
                ""
            });
        } else
        {
            String as[] = new String[1];
            as[0] = i.getServiceName();
            t = as;
        }
        s = new bn(h, t);
        q.setAdapter(s);
        q.setOnItemSelectedListener(new gg(this));
        super.b();
        k.setVisibility(0);
        j.setVisibility(8);
        g.findViewById(0x7f09022e).setVisibility(8);
        g();
    }

    public final boolean c()
    {
        if (!h())
        {
            return false;
        }
        if (TextUtils.isEmpty(i.getServiceName()))
        {
            Toast.makeText(h, getString(0x7f080238), 1).show();
            q.requestFocus();
            return false;
        } else
        {
            return super.c();
        }
    }

    protected final void d()
    {
        super.d();
        i.setHostingIp(p.getText().toString());
    }

    public final boolean e()
    {
        if (c())
        {
            d();
            return true;
        } else
        {
            return false;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b();
    }

    public final void onClick(View view)
    {
        if (view == r)
        {
            if (h())
            {
                (new d(a, h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
            return;
        } else
        {
            super.onClick(view);
            return;
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f030090, viewgroup, false);
        return g;
    }
}
