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
import com.aadhk.restpos.a.av;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.TableGroup;
import com.aadhk.restpos.c.p;
import com.aadhk.restpos.g.m;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bo, bj, bk, 
//            bm, bl

public class MgrTableGroupActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView o;
    private m p;

    public MgrTableGroupActivity()
    {
    }

    static m a(MgrTableGroupActivity mgrtablegroupactivity)
    {
        return mgrtablegroupactivity.p;
    }

    static List a(MgrTableGroupActivity mgrtablegroupactivity, List list)
    {
        mgrtablegroupactivity.a = list;
        return list;
    }

    static void b(MgrTableGroupActivity mgrtablegroupactivity)
    {
        mgrtablegroupactivity.o.setAdapter(new av(mgrtablegroupactivity, mgrtablegroupactivity.a));
        TextView textview = (TextView)mgrtablegroupactivity.findViewById(0x7f09016e);
        if (mgrtablegroupactivity.a.size() > 0)
        {
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(0);
            return;
        }
    }

    static List c(MgrTableGroupActivity mgrtablegroupactivity)
    {
        return mgrtablegroupactivity.a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300c1);
        setTitle(0x7f0801b1);
        p = new m(this);
        o = (ListView)findViewById(0x7f0900a4);
        o.setOnItemClickListener(this);
        (new d(new bo(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f000e, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        m _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        TableGroup tablegroup = (TableGroup)a.get(i);
        p p1 = new p(this, tablegroup.getName());
        p1.setTitle(0x7f0801b3);
        p1.b();
        p1.a(new bj(this, tablegroup));
        p1.a(new bk(this, tablegroup));
        p1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            p p1 = new p(this, null);
            p1.setTitle(0x7f0801b0);
            p1.a(new bm(this));
            p1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090313)
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(this);
            d1.setTitle(0x7f0801b4);
            d1.a(new bl(this));
            d1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
