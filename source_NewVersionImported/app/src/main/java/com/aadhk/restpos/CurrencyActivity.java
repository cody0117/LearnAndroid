// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.bean.Currency;
import com.aadhk.restpos.a.c;
import com.aadhk.restpos.b.d;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.c.n;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, b, c, a

public class CurrencyActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener, android.widget.AdapterView.OnItemLongClickListener
{

    private List a;
    private ListView l;
    private d m;

    public CurrencyActivity()
    {
    }

    static d a(CurrencyActivity currencyactivity)
    {
        return currencyactivity.m;
    }

    private void a()
    {
        a = m.a();
        TextView textview = (TextView)findViewById(0x7f0b012a);
        if (a.size() > 0)
        {
            textview.setVisibility(8);
            l.setAdapter(new c(this, a));
            return;
        } else
        {
            textview.setVisibility(0);
            return;
        }
    }

    static void a(CurrencyActivity currencyactivity, Currency currency)
    {
        currencyactivity.m.a(currency.a());
        currencyactivity.a();
    }

    static void b(CurrencyActivity currencyactivity)
    {
        currencyactivity.a();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f090068);
        setContentView(0x7f030096);
        m = new d(f.a().b());
        l = (ListView)findViewById(0x7f0b0086);
        l.setOnItemClickListener(this);
        l.setOnItemLongClickListener(this);
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
        Currency currency = (Currency)a.get(i);
        Intent intent = new Intent();
        intent.putExtra("currency", currency);
        setResult(-1, intent);
        finish();
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l1)
    {
        Currency currency = (Currency)a.get(i);
        String s = currency.a();
        n n1 = new n(this, currency, 2);
        n1.setTitle(0x7f090069);
        n1.a(new b(this, s));
        n1.a(new com.aadhk.restpos.c(this, currency));
        n1.show();
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (0x7f0b027f == menuitem.getItemId())
        {
            n n1 = new n(this, null, 1);
            n1.setTitle(0x7f09006a);
            n1.a(new a(this));
            n1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void onResume()
    {
        super.onResume();
        a();
    }
}
