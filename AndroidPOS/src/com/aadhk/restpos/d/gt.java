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
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.n;
import com.aadhk.restpos.bean.POSPrinterSetting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            gn, gu

public final class gt extends gn
{

    private EditText a;
    private EditText p;
    private EditText q;

    public gt()
    {
    }

    public final void a()
    {
        (new d(new gu(this, (byte)0), h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    protected final void b()
    {
        a = (EditText)g.findViewById(0x7f090217);
        p = (EditText)g.findViewById(0x7f090219);
        q = (EditText)g.findViewById(0x7f090215);
        a.setText(i.getIp());
        p.setText((new StringBuilder()).append(i.getPort()).toString());
        q.setText(i.getModel());
        super.b();
        j.setVisibility(0);
        k.setVisibility(0);
        g();
    }

    public final boolean c()
    {
        if (TextUtils.isEmpty(q.getText().toString()))
        {
            q.setError(getString(0x7f080085));
            q.requestFocus();
            return false;
        }
        q.setError(null);
        String s = a.getText().toString();
        if (TextUtils.isEmpty(s))
        {
            a.setError(getString(0x7f080085));
            a.requestFocus();
            return false;
        }
        if (!n.b.matcher(s).matches())
        {
            a.setError(getString(0x7f080237));
            a.requestFocus();
            return false;
        }
        a.setError(null);
        if (TextUtils.isEmpty(p.getText().toString()))
        {
            p.setError(getString(0x7f080085));
            p.requestFocus();
            return false;
        }
        p.setError(null);
        if (TextUtils.isEmpty(b.getText().toString()))
        {
            b.setError(getString(0x7f080085));
            b.requestFocus();
            return false;
        } else
        {
            b.setError(null);
            return super.c();
        }
    }

    protected final void d()
    {
        super.d();
        i.setIp(a.getText().toString());
        i.setPort(Integer.parseInt(p.getText().toString()));
        i.setModel(q.getText().toString());
        i.setCommInitial(b.getText().toString());
        i.setCommCut(c.getText().toString());
        i.setCommDrawer(d.getText().toString());
        i.setCommBeep(e.getText().toString());
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

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f030095, viewgroup, false);
        return g;
    }
}
