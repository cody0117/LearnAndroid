// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.b.e;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.a.ad;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.l;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bq, bo, bp

public final class bn extends e
    implements android.view.View.OnClickListener
{

    Handler f;
    private Button g;
    private Button h;
    private Button i;
    private TextView j;
    private TextView k;
    private TextView l;
    private List m;
    private Order n;
    private ProgressDialog o;
    private f p;
    private ad q;
    private Company r;
    private POSPrinterSetting s;
    private r t;

    public bn(Context context, Order order, List list, SQLiteDatabase sqlitedatabase)
    {
        super(context, 0x7f030052);
        f = new bq(this);
        n = order;
        m = list;
        r = ((POSApp)context.getApplicationContext()).b();
        l l1 = new l(context);
        k = (TextView)findViewById(0x7f0b0116);
        l = (TextView)findViewById(0x7f0b0117);
        j = (TextView)findViewById(0x7f0b0119);
        h = (Button)findViewById(0x7f0b0113);
        i = (Button)findViewById(0x7f0b0114);
        g = (Button)findViewById(0x7f0b011a);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        t = new r(sqlitedatabase);
        s = t.b(2);
        if (!s.isEnable())
        {
            h.setVisibility(8);
        }
        k.setText((new StringBuilder()).append(order.getOrderNum()).append("(").append(order.getTableName()).append(")").toString());
        l.setText(com.aadhk.restpos.f.i.c(order.getStartTime(), l1.c()));
        String s1 = (new StringBuilder()).append(order.getCancelPerson()).append(":").toString();
        if (!TextUtils.isEmpty(order.getCancelReason()))
        {
            s1 = (new StringBuilder()).append(s1).append(" ").append(order.getCancelReason()).toString();
        }
        j.setText(s1);
        p = new f(context);
        b();
    }

    static POSPrinterSetting a(bn bn1)
    {
        return bn1.s;
    }

    static Order b(bn bn1)
    {
        return bn1.n;
    }

    private void b()
    {
        ExpandableListView expandablelistview = (ExpandableListView)findViewById(0x102000a);
        q = new ad(e, m);
        expandablelistview.setAdapter(q);
        expandablelistview.setGroupIndicator(null);
        expandablelistview.setOnGroupClickListener(new bo(this));
        for (int i1 = 0; i1 < m.size(); i1++)
        {
            expandablelistview.expandGroup(i1);
        }

    }

    static List c(bn bn1)
    {
        return bn1.m;
    }

    static f d(bn bn1)
    {
        return bn1.p;
    }

    static ProgressDialog e(bn bn1)
    {
        return bn1.o;
    }

    public final void onClick(View view)
    {
        if (view == g)
        {
            dismiss();
        } else
        {
            if (view == h)
            {
                if (m.size() > 0)
                {
                    (new a(e, new bp(this), c.getString(0x7f090177))).execute(null);
                    return;
                } else
                {
                    Toast.makeText(e, 0x7f0901f4, 1).show();
                    return;
                }
            }
            if (view == i)
            {
                String s1 = (new StringBuilder()).append(r.getName()).append(" - ").append(e.getResources().getString(0x7f09012c)).toString();
                p.a(s, n, m, null, s1, true);
                dismiss();
                return;
            }
        }
    }
}
