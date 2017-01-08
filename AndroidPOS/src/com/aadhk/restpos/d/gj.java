// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.a.bn;
import com.aadhk.restpos.bean.POSPrinterSetting;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            gn, gl, gm, gk

public final class gj extends gn
{

    c a;
    private Spinner p;
    private TextView q;
    private bn r;
    private String s[];
    private BluetoothAdapter t;
    private List u;
    private final int v = 1;
    private int w;

    public gj()
    {
        w = 0;
        a = new gl(this);
    }

    static int a(gj gj1)
    {
        return gj1.w;
    }

    static int a(gj gj1, int i)
    {
        gj1.w = i;
        return i;
    }

    static bn a(gj gj1, bn bn1)
    {
        gj1.r = bn1;
        return bn1;
    }

    static List a(gj gj1, List list)
    {
        gj1.u = list;
        return list;
    }

    static String[] a(gj gj1, String as[])
    {
        gj1.s = as;
        return as;
    }

    static List b(gj gj1)
    {
        return gj1.u;
    }

    static BluetoothAdapter c(gj gj1)
    {
        return gj1.t;
    }

    static String[] d(gj gj1)
    {
        return gj1.s;
    }

    static bn e(gj gj1)
    {
        return gj1.r;
    }

    static Spinner f(gj gj1)
    {
        return gj1.p;
    }

    public final void a()
    {
        (new d(new gm(this, (byte)0), h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    protected final void b()
    {
        q = (TextView)g.findViewById(0x7f090247);
        q.setOnClickListener(this);
        p = (Spinner)g.findViewById(0x7f090248);
        if (TextUtils.isEmpty(i.getBtName()))
        {
            s = (new String[] {
                ""
            });
        } else
        {
            String as[] = new String[1];
            as[0] = i.getBtName();
            s = as;
        }
        r = new bn(h, s);
        p.setAdapter(r);
        p.setOnItemSelectedListener(new gk(this));
        super.b();
        k.setVisibility(0);
        j.setVisibility(8);
        g.findViewById(0x7f09022e).setVisibility(8);
        g();
    }

    public final boolean c()
    {
        if (TextUtils.isEmpty(i.getBtName()))
        {
            Toast.makeText(h, getString(0x7f080239), 1).show();
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
    }

    public final boolean e()
    {
        if (c())
        {
            super.d();
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

    public final void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1 && i == 1)
        {
            (new d(a, h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }

    public final void onClick(View view)
    {
        if (view == q)
        {
            t = BluetoothAdapter.getDefaultAdapter();
            if (t != null && !t.isEnabled())
            {
                startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 1);
            }
            (new d(a, h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            super.onClick(view);
            return;
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f030091, viewgroup, false);
        return g;
    }
}
