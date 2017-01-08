// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.bean.Customer;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            e

final class f
    implements android.widget.AdapterView.OnItemClickListener
{

    final e a;

    f(e e1)
    {
        a = e1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Customer customer = (Customer)e.a(a).get(i);
        Intent intent = new Intent();
        intent.putExtra("bundleCustomer", customer);
        e.b(a).setResult(-1, intent);
        e.b(a).finish();
    }
}
