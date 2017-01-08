// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.UserPermissionActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            gf, gh

final class gg
    implements android.widget.AdapterView.OnItemClickListener
{

    final gf a;

    gg(gf gf1)
    {
        a = gf1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (gf.a(a).c())
        {
            gf.a(a, i);
            gf.b(a).notifyDataSetInvalidated();
        }
        gf.a(a).a(i + 1);
    }
}
