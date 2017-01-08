// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
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
import com.aadhk.restpos.a.f;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.c.k;
import com.aadhk.restpos.g.b;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, f, b, c, 
//            a, e

public class CurrencyActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener, android.widget.AdapterView.OnItemLongClickListener
{

    private List a;
    private ListView o;
    private b p;

    public CurrencyActivity()
    {
    }

    static b a(CurrencyActivity currencyactivity)
    {
        return currencyactivity.p;
    }

    static List a(CurrencyActivity currencyactivity, List list)
    {
        currencyactivity.a = list;
        return list;
    }

    static void a(CurrencyActivity currencyactivity, Currency currency)
    {
        (new d(new com.aadhk.restpos.f(currencyactivity, currency.getId()), currencyactivity, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static void b(CurrencyActivity currencyactivity)
    {
        TextView textview = (TextView)currencyactivity.findViewById(0x7f09016e);
        if (currencyactivity.a.size() > 0)
        {
            textview.setVisibility(8);
            currencyactivity.o.setAdapter(new f(currencyactivity, currencyactivity.a));
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
        setTitle(0x7f08009a);
        setContentView(0x7f0300b3);
        p = new b(this);
        o = (ListView)findViewById(0x7f0900a4);
        o.setOnItemClickListener(this);
        o.setOnItemLongClickListener(this);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        b _tmp = p;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Currency currency = (Currency)a.get(i);
        Intent intent = new Intent();
        intent.putExtra("currency", currency);
        setResult(-1, intent);
        finish();
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        Currency currency = (Currency)a.get(i);
        String s = currency.getCode();
        k k1 = new k(this, currency, 2);
        k1.setTitle(0x7f08009b);
        k1.a(new com.aadhk.restpos.b(this, s));
        k1.a(new c(this, currency));
        k1.show();
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (0x7f090301 == menuitem.getItemId())
        {
            k k1 = new k(this, null, 1);
            k1.setTitle(0x7f08009c);
            k1.a(new a(this));
            k1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void onResume()
    {
        super.onResume();
        (new d(new e(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
