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
//            j, n

final class l
    implements android.widget.AdapterView.OnItemClickListener
{

    final j a;

    l(j j1)
    {
        a = j1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        j.a(a, i);
        j.c(a).notifyDataSetChanged();
        j.b(a).a((Customer)j.a(a).get(i));
    }
}
