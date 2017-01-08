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
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.c.o;
import com.aadhk.restpos.g.e;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, n, r, j, 
//            k, m

public class DiscountActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView o;
    private e p;

    public DiscountActivity()
    {
    }

    static e a(DiscountActivity discountactivity)
    {
        return discountactivity.p;
    }

    static List a(DiscountActivity discountactivity, List list)
    {
        discountactivity.a = list;
        return list;
    }

    static void b(DiscountActivity discountactivity)
    {
        discountactivity.o.setAdapter(new n(discountactivity, discountactivity.a));
        TextView textview = (TextView)discountactivity.findViewById(0x7f09016e);
        if (discountactivity.a.size() > 0)
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
        setTitle(0x7f0802db);
        p = new e(this);
        o = (ListView)findViewById(0x7f0900a4);
        o.setOnItemClickListener(this);
        (new d(new r(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        e _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Discount discount = (Discount)a.get(i);
        o o1 = new o(this, discount);
        o1.setTitle(0x7f0802ea);
        o1.b();
        o1.a(new j(this));
        o1.a(new k(this, discount));
        o1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            o o1 = new o(this, null);
            o1.setTitle(0x7f0802e1);
            o1.a(new m(this));
            o1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
