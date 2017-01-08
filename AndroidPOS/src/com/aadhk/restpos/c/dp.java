// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.util.w;

// Referenced classes of package com.aadhk.restpos.c:
//            dq

public final class dp extends e
    implements android.view.View.OnClickListener
{

    private ImageView f;
    private ImageView g;
    private Button h;
    private Button i;
    private Button j;
    private EditText k;
    private CharSequence l;

    public dp(Context context)
    {
        super(context, 0x7f03004e);
        f = (ImageView)findViewById(0x7f0900f4);
        g = (ImageView)findViewById(0x7f0900f5);
        h = (Button)findViewById(0x7f0900db);
        i = (Button)findViewById(0x7f09005b);
        k = (EditText)findViewById(0x7f0900da);
        k.setHint(0x7f080226);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        k.setText(null);
        k.setOnFocusChangeListener(new dq(this));
        l = c.getString(0x7f080085);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        w.a(k);
_L4:
        return;
_L2:
        if (view == g)
        {
            w.b(k);
            return;
        }
        if (view != h)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = k.getText().toString();
        if (TextUtils.isEmpty(s))
        {
            k.setError(l);
            return;
        }
        if (a != null)
        {
            a.a(s);
            dismiss();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (view == i)
        {
            dismiss();
            return;
        }
        if (view == j && b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }
}
