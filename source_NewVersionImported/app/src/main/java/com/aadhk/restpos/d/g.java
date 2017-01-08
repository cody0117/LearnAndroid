// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.bean.Customer;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            e, i

final class g
    implements android.widget.AdapterView.OnItemClickListener
{

    final e a;

    g(e e1)
    {
        a = e1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        e.a(a, j);
        e.c(a).notifyDataSetChanged();
        e.b(a).a((Customer)e.a(a).get(j));
    }
}
