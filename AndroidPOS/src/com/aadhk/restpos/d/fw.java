// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.CheckBox;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            fv, fq, fx

final class fw
    implements android.view.View.OnClickListener
{

    final int a;
    final fx b;
    final fv c;

    fw(fv fv1, int i, fx fx1)
    {
        c = fv1;
        a = i;
        b = fx1;
        super();
    }

    public final void onClick(View view)
    {
        fq.d(c.a).put(fq.c(c.a)[a], Boolean.valueOf(b.b.isChecked()));
    }
}
