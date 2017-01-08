// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import android.os.Bundle;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.f.h;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ff

final class fj
    implements f
{

    final ff a;

    fj(ff ff1)
    {
        a = ff1;
        super();
    }

    public final void a(Object obj)
    {
        SplitBill splitbill = (SplitBill)ff.b(a).get(((Integer)obj).intValue());
        if (ff.c(a).getSplitType() != 2) goto _L2; else goto _L1
_L1:
        List list1 = ff.d(a).b(ff.c(a).getId(), splitbill.getId());
        ff.b(a, list1);
_L4:
        Order order = ff.c(a).clone();
        order.setSubTotal(splitbill.getAmount());
        order.setTax1Amt(ff.e(a));
        order.setTax2Amt(ff.g(a));
        order.setBillId(splitbill.getId());
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleOrderClone", order);
        bundle.putParcelable("bundleOrder", ff.c(a));
        intent.putExtras(bundle);
        intent.setClass(com.aadhk.restpos.d.ff.h(a), com/aadhk/restpos/PaymentActivity);
        a.startActivity(intent);
        com.aadhk.restpos.d.ff.h(a).finish();
        return;
_L2:
        if (ff.c(a).getSplitType() == 1)
        {
            List list = ff.d(a).b(ff.c(a).getId(), 0L);
            ff.b(a, list);
            ff.a(a, h.a(ff.e(a), splitbill.getAmount(), ff.c(a).getSubTotal(), com.aadhk.restpos.d.ff.f(a)));
            ff.b(a, h.a(ff.g(a), splitbill.getAmount(), ff.c(a).getSubTotal(), com.aadhk.restpos.d.ff.f(a)));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
