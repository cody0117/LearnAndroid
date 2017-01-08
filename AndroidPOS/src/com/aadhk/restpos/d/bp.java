// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.LoginActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.VersionData;
import com.aadhk.restpos.g.i;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bm

final class bp
    implements c
{

    final bm a;
    private Map b;

    private bp(bm bm1)
    {
        a = bm1;
        super();
    }

    bp(bm bm1, byte byte0)
    {
        this(bm1);
    }

    public final void a()
    {
        b = bm.e(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            VersionData versiondata = (VersionData)b.get("serviceData");
            Map map = versiondata.getVersioMap();
            if (map.get("rest_table") != null)
            {
                bm.e(a).a(versiondata.getTableList(), ((Integer)map.get("rest_table")).intValue());
            }
            if (map.get("rest_category") != null)
            {
                bm.e(a).b(versiondata.getCategoryList(), ((Integer)map.get("rest_category")).intValue());
            }
            if (map.get("rest_item") != null)
            {
                bm.e(a).c(versiondata.getItemList(), ((Integer)map.get("rest_item")).intValue());
            }
            if (map.get("rest_modifier_group") != null)
            {
                bm.e(a).d(versiondata.getModifierGroupList(), ((Integer)map.get("rest_modifier_group")).intValue());
            }
            if (map.get("rest_modifier") != null)
            {
                bm.e(a).e(versiondata.getModifierList(), ((Integer)map.get("rest_modifier")).intValue());
            }
            if (map.get("rest_company") != null)
            {
                bm.e(a).a(versiondata.getCompany(), ((Integer)map.get("rest_company")).intValue());
                ((POSApp)bm.b(a).getApplicationContext()).c();
            }
            if (map.get("rest_user") != null)
            {
                bm.e(a).f(versiondata.getUserList(), ((Integer)map.get("rest_user")).intValue());
            }
            if (map.get("rest_customer") != null)
            {
                bm.e(a).g(versiondata.getCustomerList(), ((Integer)map.get("rest_customer")).intValue());
            }
            if (map.get("rest_currency") != null)
            {
                bm.e(a).h(versiondata.getCurrencyList(), ((Integer)map.get("rest_currency")).intValue());
            }
            if (map.get("rest_role_permission") != null)
            {
                bm.e(a).i(versiondata.getRolePermissionList(), ((Integer)map.get("rest_role_permission")).intValue());
                ((POSApp)bm.b(a).getApplicationContext()).f();
            }
            if (map.get("rest_printer") != null)
            {
                bm.e(a).j(versiondata.getPrinterList(), ((Integer)map.get("rest_printer")).intValue());
                ((POSApp)bm.b(a).getApplicationContext()).l();
                ((POSApp)bm.b(a).getApplicationContext()).n();
            }
            if (map.get("rest_kitchen_note_group") != null)
            {
                bm.e(a).k(versiondata.getKitchenNoteGroupList(), ((Integer)map.get("rest_kitchen_note_group")).intValue());
            }
            if (map.get("rest_kitchen_note") != null)
            {
                bm.e(a).l(versiondata.getKitchenNoteList(), ((Integer)map.get("rest_kitchen_note")).intValue());
            }
            if (map.get("rest_price_sechedule") != null)
            {
                bm.e(a).m(versiondata.getPriceScheduleList(), ((Integer)map.get("rest_price_sechedule")).intValue());
            }
            if (map.get("rest_discount") != null)
            {
                bm.e(a).n(versiondata.getDiscountList(), ((Integer)map.get("rest_discount")).intValue());
            }
            if (map.get("rest_note") != null)
            {
                bm.e(a).o(versiondata.getNoteList(), ((Integer)map.get("rest_note")).intValue());
            }
            if (map.get("rest_payment_method") != null)
            {
                bm.e(a).q(versiondata.getPaymentMethodList(), ((Integer)map.get("rest_payment_method")).intValue());
                ((POSApp)bm.b(a).getApplicationContext()).j();
            }
            if (map.get("rest_service_fee") != null)
            {
                (new StringBuilder("TABLE_SERVICE_FEE:================")).append(versiondata.getServiceFeeList());
                bm.e(a).p(versiondata.getServiceFeeList(), ((Integer)map.get("rest_service_fee")).intValue());
                ((POSApp)bm.b(a).getApplicationContext()).h();
            }
            com.aadhk.restpos.d.bm.c(a).setText(0x7f08025c);
        } else
        if (!"3".equals(s))
        {
            if ("9".equals(s))
            {
                Toast.makeText(bm.b(a), 0x7f080248, 1).show();
                return;
            } else
            {
                Toast.makeText(bm.b(a), 0x7f080247, 1).show();
                return;
            }
        }
    }
}
