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
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.b;
import com.aadhk.product.library.c.n;
import com.aadhk.restpos.a.bf;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.f.l;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            dh, dg, df

public final class de extends dh
{

    b a;
    private EditText o;
    private Spinner p;
    private TextView q;
    private bf r;
    private String s[];

    public de()
    {
        a = new dg(this);
    }

    static bf a(de de1, bf bf1)
    {
        de1.r = bf1;
        return bf1;
    }

    static String[] a(de de1)
    {
        return de1.s;
    }

    static String[] a(de de1, String as[])
    {
        de1.s = as;
        return as;
    }

    static EditText b(de de1)
    {
        return de1.o;
    }

    static bf c(de de1)
    {
        return de1.r;
    }

    static Spinner d(de de1)
    {
        return de1.p;
    }

    private boolean h()
    {
        String s1 = o.getText().toString();
        if (TextUtils.isEmpty(s1))
        {
            o.setError(getString(0x7f090055));
            o.requestFocus();
            return false;
        }
        if (!n.b.matcher(s1).matches())
        {
            o.setError(getString(0x7f0901fa));
            o.requestFocus();
            return false;
        } else
        {
            o.setError(null);
            return true;
        }
    }

    public final void a()
    {
        j.b(i);
        if ((i.getConnType() == 0 || i.getConnType() == 3) && i.isEnable())
        {
            (new l(h)).a("requireWifi", true);
            return;
        } else
        {
            (new l(h)).a("requireWifi", false);
            return;
        }
    }

    protected final void b()
    {
        o = (EditText)g.findViewById(0x7f0b01c7);
        o.setText(i.getHostingIp());
        q = (TextView)g.findViewById(0x7f0b01f3);
        q.setOnClickListener(this);
        p = (Spinner)g.findViewById(0x7f0b01f2);
        if (TextUtils.isEmpty(i.getServiceName()))
        {
            s = (new String[] {
                ""
            });
        } else
        {
            String as[] = new String[1];
            as[0] = i.getServiceName();
            s = as;
        }
        r = new bf(h, s);
        p.setAdapter(r);
        p.setOnItemSelectedListener(new df(this));
        super.b();
        l.setVisibility(0);
        k.setVisibility(8);
        g.findViewById(0x7f0b01da).setVisibility(8);
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
            Toast.makeText(h, getString(0x7f0901fb), 1).show();
            p.requestFocus();
            return false;
        } else
        {
            return super.c();
        }
    }

    protected final void d()
    {
        super.d();
        i.setHostingIp(o.getText().toString());
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
label0:
        {
            a a1;
label1:
            {
                if (view != q)
                {
                    break label0;
                }
                if (h())
                {
                    a1 = new a(h, a, getString(0x7f0901d6));
                    if (android.os.Build.VERSION.SDK_INT < 11)
                    {
                        break label1;
                    }
                    a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                }
                return;
            }
            a1.execute(null);
            return;
        }
        super.onClick(view);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f030079, viewgroup, false);
        return g;
    }
}
