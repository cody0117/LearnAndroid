// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.view.Window;

// Referenced classes of package com.aadhk.restpos.c:
//            ab

final class ae
    implements android.view.View.OnFocusChangeListener
{

    final ab a;

    ae(ab ab1)
    {
        a = ab1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            a.getWindow().setSoftInputMode(5);
        }
    }
}
