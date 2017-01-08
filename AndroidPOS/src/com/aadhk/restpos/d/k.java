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
//            j

final class k
    implements android.widget.AdapterView.OnItemClickListener
{

    final j a;

    k(j j1)
    {
        a = j1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Customer customer = (Customer)j.a(a).get(i);
        Intent intent = new Intent();
        intent.putExtra("bundleCustomer", customer);
        j.b(a).setResult(-1, intent);
        j.b(a).finish();
    }
}
