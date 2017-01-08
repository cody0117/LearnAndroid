// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.view.Window;
import com.aadhk.restpos.UserActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            fu

final class fw
    implements android.view.View.OnFocusChangeListener
{

    final fu a;

    fw(fu fu1)
    {
        a = fu1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            fu.b(a).getWindow().setSoftInputMode(5);
        }
    }
}
