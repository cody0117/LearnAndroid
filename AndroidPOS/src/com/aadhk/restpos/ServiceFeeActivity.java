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
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.c.ag;
import com.aadhk.restpos.g.z;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, df, dj, db, 
//            dc, de

public class ServiceFeeActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView o;
    private z p;

    public ServiceFeeActivity()
    {
    }

    static z a(ServiceFeeActivity servicefeeactivity)
    {
        return servicefeeactivity.p;
    }

    static List a(ServiceFeeActivity servicefeeactivity, List list)
    {
        servicefeeactivity.a = list;
        return list;
    }

    static void b(ServiceFeeActivity servicefeeactivity)
    {
        servicefeeactivity.o.setAdapter(new df(servicefeeactivity, servicefeeactivity.a));
        TextView textview = (TextView)servicefeeactivity.findViewById(0x7f09016e);
        if (servicefeeactivity.a.size() > 0)
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
        setTitle(0x7f0800ef);
        p = new z(this);
        o = (ListView)findViewById(0x7f0900a4);
        o.setOnItemClickListener(this);
        (new d(new dj(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        z _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ServiceFee servicefee = (ServiceFee)a.get(i);
        ag ag1 = new ag(this, servicefee);
        ag1.setTitle(0x7f0800f1);
        ag1.b();
        ag1.a(new db(this));
        ag1.a(new dc(this, servicefee));
        ag1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            ag ag1 = new ag(this, null);
            ag1.setTitle(0x7f0800f2);
            ag1.a(new de(this));
            ag1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
