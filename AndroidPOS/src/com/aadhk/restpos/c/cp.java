// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.License;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, cr, cq

public final class cp extends cs
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private TextView g;
    private TextView h;
    private EditText i;
    private EditText j;
    private EditText k;
    private EditText l;
    private cr m;
    private cq n;
    private License o;

    public cp(Context context, License license)
    {
        super(context, 0x7f03005e);
        setTitle(0x7f080009);
        setCancelable(true);
        o = license;
        e = (Button)findViewById(0x7f090154);
        e.setOnClickListener(this);
        f = (Button)findViewById(0x7f09011c);
        f.setOnClickListener(this);
        g = (TextView)findViewById(0x7f09014f);
        h = (TextView)findViewById(0x7f09014e);
        i = (EditText)findViewById(0x7f090150);
        j = (EditText)findViewById(0x7f090151);
        l = (EditText)findViewById(0x7f090152);
        k = (EditText)findViewById(0x7f090153);
        i.setText(o.getActivationKey());
        j.setText(o.getUserName());
        k.setText(o.getPhone());
        l.setText(o.getEmail());
        g.setText((new StringBuilder()).append(a.getString(0x7f08000f)).append(" ").append(o.getSerialNumber()).toString());
        if (!TextUtils.isEmpty(o.getActivationKey()))
        {
            e.setVisibility(8);
            f.setVisibility(8);
            i.setEnabled(false);
            j.setEnabled(false);
            k.setEnabled(false);
            l.setEnabled(false);
            setTitle(0x7f08000a);
            h.setText(0x7f0800f9);
        }
    }

    public final void a(cr cr1)
    {
        m = cr1;
    }

    public final void onBackPressed()
    {
        dismiss();
        if (n != null)
        {
            cq _tmp = n;
        }
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != e) goto _L2; else goto _L1
_L1:
        String s = i.getText().toString();
        String s1 = j.getText().toString();
        String s2 = l.getText().toString();
        String s3 = k.getText().toString();
        if (TextUtils.isEmpty(s))
        {
            i.setError(a.getString(0x7f080085));
            i.requestFocus();
        } else
        {
            i.setError(null);
            if (TextUtils.isEmpty(s1))
            {
                j.setError(a.getString(0x7f080085));
                j.requestFocus();
                flag = false;
            } else
            {
                j.setError(null);
                if (TextUtils.isEmpty(s2))
                {
                    l.setError(a.getString(0x7f080085));
                    l.requestFocus();
                    flag = false;
                } else
                {
                    l.setError(null);
                    if (!s2.equals("") && !com.aadhk.product.library.c.h.a(s2))
                    {
                        l.setError(a.getString(0x7f08032f));
                        l.requestFocus();
                        flag = false;
                    } else
                    {
                        l.setError(null);
                        o.setActivationKey(s);
                        o.setUserName(s1);
                        o.setEmail(s2);
                        o.setPhone(s3);
                        flag = true;
                    }
                }
            }
        }
_L6:
        if (flag)
        {
            if (m != null)
            {
                m.a(o);
            }
            dismiss();
        }
_L4:
        return;
_L2:
        if (view != f) goto _L4; else goto _L3
_L3:
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse((new StringBuilder("market://")).append(a.getString(0x7f08001b)).toString()));
        c.startActivity(intent);
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
