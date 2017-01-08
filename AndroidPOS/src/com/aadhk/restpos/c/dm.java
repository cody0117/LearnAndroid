// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.n;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class dm extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private EditText h;
    private TextView i;
    private CharSequence j;
    private String k;
    private Context l;

    public dm(Context context, String s)
    {
        ConnectivityManager connectivitymanager;
        super(context, 0x7f030067);
        l = context;
        k = s;
        f = (Button)findViewById(0x7f09005a);
        g = (Button)findViewById(0x7f09005b);
        h = (EditText)findViewById(0x7f090165);
        i = (TextView)findViewById(0x7f090164);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setText(s);
        j = c.getString(0x7f080085);
        connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager == null) goto _L2; else goto _L1
_L1:
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnected() || networkinfo.getState() != android.net.NetworkInfo.State.CONNECTED) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        if (!flag)
        {
            i.setText(0x7f08038e);
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        String s1 = ((WifiManager)l.getSystemService("wifi")).getConnectionInfo().getSSID();
        String s3;
        if (TextUtils.isEmpty(s1))
        {
            String s4 = l.getString(0x7f08038f);
            Object aobj1[] = new Object[2];
            aobj1[0] = l.getString(0x7f08038e);
            aobj1[1] = k;
            s3 = String.format(s4, aobj1);
        } else
        {
            String s2 = l.getString(0x7f08038f);
            Object aobj[] = new Object[2];
            aobj[0] = s1;
            aobj[1] = k;
            s3 = String.format(s2, aobj);
        }
        i.setText(s3);
        return;
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        String s;
        s = h.getText().toString();
        if (!TextUtils.isEmpty(k) && !TextUtils.isEmpty(s))
        {
            s.substring(0, s.lastIndexOf("."));
            k.substring(0, k.lastIndexOf("."));
        }
        if (!TextUtils.isEmpty(s)) goto _L4; else goto _L3
_L3:
        h.setError(j);
        h.requestFocus();
_L6:
        return;
_L4:
        if (!n.b.matcher(s).matches())
        {
            h.setError(l.getString(0x7f080237));
            h.requestFocus();
            return;
        }
        if (a != null)
        {
            a.a(s);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
