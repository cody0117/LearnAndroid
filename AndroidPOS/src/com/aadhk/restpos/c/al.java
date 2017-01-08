// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.view.Window;

// Referenced classes of package com.aadhk.restpos.c:
//            ak

final class al
    implements android.view.View.OnFocusChangeListener
{

    final ak a;

    al(ak ak1)
    {
        a = ak1;
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
