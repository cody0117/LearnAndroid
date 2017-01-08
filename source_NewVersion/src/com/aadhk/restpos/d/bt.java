// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import android.os.Bundle;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.f.h;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bk

final class bt
    implements f
{

    final List a;
    final bk b;

    bt(bk bk1, List list)
    {
        b = bk1;
        a = list;
        super();
    }

    public final void a(Object obj)
    {
        SplitBill splitbill = (SplitBill)a.get(((Integer)obj).intValue());
        if (bk.i(b).getSplitType() != 2) goto _L2; else goto _L1
_L1:
        bk.a(b, bk.e(b).b(bk.i(b).getId(), splitbill.getId()));
        bk.b(b, bk.a(b));
_L4:
        Order order = bk.i(b).clone();
        order.setSubTotal(splitbill.getAmount());
        order.setTax1Amt(bk.l(b));
        order.setTax2Amt(com.aadhk.restpos.d.bk.n(b));
        order.setBillId(splitbill.getId());
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleOrderClone", order);
        bundle.putParcelable("bundleOrder", bk.i(b));
        intent.putExtras(bundle);
        intent.setClass(bk.d(b), com/aadhk/restpos/PaymentActivity);
        b.startActivity(intent);
        bk.d(b).finish();
        return;
_L2:
        if (bk.i(b).getSplitType() == 1)
        {
            bk.a(b, h.a(bk.l(b), splitbill.getAmount(), bk.i(b).getSubTotal(), bk.m(b)));
            bk.b(b, h.a(com.aadhk.restpos.d.bk.n(b), splitbill.getAmount(), bk.i(b).getSubTotal(), bk.m(b)));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
