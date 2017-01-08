// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b.a;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.b.f;
import com.aadhk.b.g;
import com.aadhk.b.h;

// Referenced classes of package com.aadhk.b.a:
//            c, b

public final class a extends Dialog
    implements android.view.View.OnClickListener
{

    private Button a;
    private Button b;
    private Button c;
    private TextView d;
    private TextView e;
    private EditText f;
    private String g;
    private c h;
    private b i;
    private long j;
    private String k;
    private Resources l;
    private Context m;

    public a(Context context, long l1, String s)
    {
        super(context);
        requestWindowFeature(1);
        setCancelable(true);
        m = context;
        setContentView(g.a);
        j = l1;
        k = s;
        l = context.getResources();
        d = (TextView)findViewById(f.e);
        String s1 = l.getString(h.h);
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(l1);
        String s2 = String.format(s1, aobj);
        d.setText(s2);
        f = (EditText)findViewById(f.f);
        e = (TextView)findViewById(f.d);
        a = (Button)findViewById(f.c);
        a.setOnClickListener(this);
        b = (Button)findViewById(f.b);
        b.setOnClickListener(this);
        c = (Button)findViewById(f.a);
        c.setOnClickListener(this);
        if (k != null && !k.equals(""))
        {
            a.setVisibility(8);
            b.setVisibility(8);
            c.setVisibility(8);
            f.setEnabled(false);
            f.setText(k);
            ((TextView)findViewById(f.d)).setText(h.b);
            String s3 = l.getString(h.g);
            Object aobj1[] = new Object[1];
            aobj1[0] = Long.valueOf(j);
            String s4 = String.format(s3, aobj1);
            d.setText(s4);
        }
    }

    public final void a(c c1)
    {
        h = c1;
    }

    public final void a(String s)
    {
        e.setText(s);
    }

    public final void onBackPressed()
    {
        dismiss();
        if (i != null)
        {
            b _tmp = i;
        }
    }

    public final void onClick(View view)
    {
        int i1 = 1;
        if (view == a)
        {
            g = f.getText().toString();
            if (g == null || "".equals(g))
            {
                f.setError(l.getString(h.e));
                i1 = 0;
            }
            if (i1 != 0)
            {
                if (h != null)
                {
                    h.a(g);
                }
                dismiss();
            }
        } else
        {
            if (view == b)
            {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                String as[] = new String[i1];
                as[0] = l.getString(h.a);
                intent.putExtra("android.intent.extra.EMAIL", as);
                intent.putExtra("android.intent.extra.SUBJECT", l.getString(h.d));
                String s = l.getString(h.c);
                Object aobj[] = new Object[i1];
                aobj[0] = Long.valueOf(j);
                intent.putExtra("android.intent.extra.TEXT", String.format(s, aobj));
                m.startActivity(intent);
                return;
            }
            if (view == c)
            {
                Intent intent1 = new Intent("android.intent.action.VIEW");
                intent1.setData(Uri.parse((new StringBuilder("market://")).append(l.getString(h.f)).toString()));
                m.startActivity(intent1);
                return;
            }
        }
    }

    public final void setTitle(int i1)
    {
        e.setText(i1);
    }
}
