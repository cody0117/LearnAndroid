// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.c.n;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.POSPrinterSetting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            dh

public final class dn extends dh
{

    private EditText a;
    private EditText o;
    private EditText p;

    public dn()
    {
    }

    public final void a()
    {
        j.a(i);
    }

    protected final void b()
    {
        a = (EditText)g.findViewById(0x7f0b01c3);
        o = (EditText)g.findViewById(0x7f0b01c5);
        p = (EditText)g.findViewById(0x7f0b01c1);
        a.setText(i.getIp());
        o.setText((new StringBuilder()).append(i.getPort()).toString());
        p.setText(i.getModel());
        super.b();
        k.setVisibility(0);
        l.setVisibility(0);
        g();
    }

    public final boolean c()
    {
        if (TextUtils.isEmpty(p.getText().toString()))
        {
            p.setError(getString(0x7f090055));
            p.requestFocus();
            return false;
        }
        p.setError(null);
        String s = a.getText().toString();
        if (TextUtils.isEmpty(s))
        {
            a.setError(getString(0x7f090055));
            a.requestFocus();
            return false;
        }
        if (!n.b.matcher(s).matches())
        {
            a.setError(getString(0x7f0901fa));
            a.requestFocus();
            return false;
        }
        a.setError(null);
        if (TextUtils.isEmpty(o.getText().toString()))
        {
            o.setError(getString(0x7f090055));
            o.requestFocus();
            return false;
        }
        o.setError(null);
        if (TextUtils.isEmpty(b.getText().toString()))
        {
            b.setError(getResources().getString(0x7f090055));
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
        i.setPort(Integer.parseInt(o.getText().toString()));
        i.setModel(p.getText().toString());
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
        g = layoutinflater.inflate(0x7f03007d, viewgroup, false);
        return g;
    }
}
