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
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.h;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.c.u;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, w, s, t, 
//            v

public class DiscountActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView l;
    private h m;

    public DiscountActivity()
    {
    }

    static h a(DiscountActivity discountactivity)
    {
        return discountactivity.m;
    }

    public final void a()
    {
        a = m.a();
        l.setAdapter(new w(this, a));
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
        setTitle(0x7f09027c);
        m = new h(f.a().b());
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
        Discount discount = (Discount)a.get(i);
        u u1 = new u(this, discount);
        u1.setTitle(0x7f09028b);
        u1.b();
        u1.a(new s(this, u1));
        u1.a(new t(this, discount));
        u1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            u u1 = new u(this, null);
            u1.setTitle(0x7f090282);
            u1.a(new v(this, u1));
            u1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
