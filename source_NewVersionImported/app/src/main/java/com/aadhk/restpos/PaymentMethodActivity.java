// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.a.au;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.c.bi;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bh, bi, bk

public class PaymentMethodActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView l;
    private p m;

    public PaymentMethodActivity()
    {
    }

    static p a(PaymentMethodActivity paymentmethodactivity)
    {
        return paymentmethodactivity.m;
    }

    public final void a()
    {
        a = m.a();
        l.setAdapter(new au(this, a));
        TextView textview = (TextView)findViewById(0x7f0b012a);
        if (a.size() > 0)
        {
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(0);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030096);
        setTitle(0x7f090276);
        m = new p(f.a().b());
        l = (ListView)findViewById(0x7f0b0086);
        l.setOnItemClickListener(this);
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        PaymentMethod paymentmethod = (PaymentMethod)a.get(i);
        bi bi1 = new bi(this, paymentmethod);
        bi1.setTitle(0x7f090278);
        bi1.b();
        bi1.a(new bh(this, bi1));
        bi1.a(new com.aadhk.restpos.bi(this, paymentmethod));
        bi1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            bi bi1 = new bi(this, null);
            bi1.setTitle(0x7f090279);
            bi1.a(new bk(this, bi1));
            bi1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
