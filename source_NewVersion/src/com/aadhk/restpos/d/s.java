// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.aadhk.restpos.d:
//            q

final class s
    implements android.widget.AdapterView.OnItemClickListener
{

    final q a;

    s(q q1)
    {
        a = q1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        q.b(a, i);
    }
}
