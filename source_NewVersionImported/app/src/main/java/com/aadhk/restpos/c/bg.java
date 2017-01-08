// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.aadhk.restpos.f.h;

// Referenced classes of package com.aadhk.restpos.c:
//            be

final class bg
    implements android.view.View.OnFocusChangeListener
{

    final be a;

    bg(be be1)
    {
        a = be1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = be.a(a).getText().toString();
            if (!TextUtils.isEmpty(s))
            {
                be.a(a, Double.parseDouble(s));
                be.d(a).setText((new StringBuilder()).append(h.b(be.b(a), be.c(a))).toString());
            }
        }
    }
}
