// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.util.w;

// Referenced classes of package com.aadhk.restpos.c:
//            al

public final class ak extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private ImageView h;
    private ImageView i;
    private EditText j;
    private CharSequence k;
    private boolean l;

    public ak(Context context, String s)
    {
        super(context, 0x7f03004e);
        l = true;
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f09005b);
        j = (EditText)findViewById(0x7f0900da);
        h = (ImageView)findViewById(0x7f0900f4);
        i = (ImageView)findViewById(0x7f0900f5);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        j.setText(s);
        j.setOnFocusChangeListener(new al(this));
        k = c.getString(0x7f080085);
    }

    public final void b()
    {
        j.setHint(0x7f080369);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 5: default 56
    //                   2131296347: 141
    //                   2131296475: 73
    //                   2131296476: 146
    //                   2131296500: 57
    //                   2131296501: 65;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L5:
        w.a(j);
        return;
_L6:
        w.b(j);
        return;
_L3:
        if (l && "".equals(j.getText().toString()))
        {
            j.setError(k);
            return;
        }
        if (a != null)
        {
            a.a(j.getText().toString());
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        dismiss();
        return;
_L4:
        if (b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }
}
