// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.a.bb;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.c.cn;
import com.aadhk.restpos.g.r;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, co, ci, cj, 
//            cl

public class PaymentMethodActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView o;
    private r p;

    public PaymentMethodActivity()
    {
    }

    static r a(PaymentMethodActivity paymentmethodactivity)
    {
        return paymentmethodactivity.p;
    }

    static List a(PaymentMethodActivity paymentmethodactivity, List list)
    {
        paymentmethodactivity.a = list;
        return list;
    }

    static void b(PaymentMethodActivity paymentmethodactivity)
    {
        paymentmethodactivity.o.setAdapter(new bb(paymentmethodactivity, paymentmethodactivity.a));
        TextView textview = (TextView)paymentmethodactivity.findViewById(0x7f09016e);
        if (paymentmethodactivity.a.size() > 0)
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
        setContentView(0x7f0300b3);
        setTitle(0x7f0802d4);
        p = new r(this);
        o = (ListView)findViewById(0x7f0900a4);
        o.setOnItemClickListener(this);
        (new d(new co(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        r _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        PaymentMethod paymentmethod = (PaymentMethod)a.get(i);
        cn cn1 = new cn(this, paymentmethod);
        cn1.setTitle(0x7f0802d6);
        cn1.b();
        cn1.a(new ci(this));
        cn1.a(new cj(this, paymentmethod));
        cn1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            cn cn1 = new cn(this, null);
            cn1.setTitle(0x7f0802d7);
            cn1.a(new cl(this));
            cn1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
