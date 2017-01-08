// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.product.library.a.d;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, bn, bm

public final class bl extends cs
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private EditText g;
    private String h;
    private bm i;
    private String j;
    private Context k;

    public bl(Context context)
    {
        super(context, 0x7f030055);
        setTitle(0x7f08012d);
        k = context;
        f = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        e = (Button)findViewById(0x7f0900db);
        e.setOnClickListener(this);
        g = (EditText)findViewById(0x7f09012d);
        g.setText(h);
    }

    static Context a(bl bl1)
    {
        return bl1.k;
    }

    static String b(bl bl1)
    {
        return bl1.h;
    }

    static bm c(bl bl1)
    {
        return bl1.i;
    }

    static String d(bl bl1)
    {
        return bl1.j;
    }

    static EditText e(bl bl1)
    {
        return bl1.g;
    }

    public final void a(bm bm)
    {
        i = bm;
    }

    public final void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        h = g.getText().toString();
        boolean flag;
        if (h.equals(""))
        {
            g.setError(a.getString(0x7f080085));
            g.requestFocus();
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag) goto _L2; else goto _L3
_L3:
        (new d(new bn(this, (byte)0), k, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
_L5:
        return;
_L2:
        if (view == f)
        {
            dismiss();
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }
}
