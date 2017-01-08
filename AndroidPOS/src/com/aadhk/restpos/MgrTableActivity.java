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
import au.com.bytecode.opencsv.CSVReader;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.a.ar;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.c.ah;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.n;
import com.aadhk.restpos.util.f;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bb, bi, bc, 
//            bd, av, aw, ay, 
//            az, ax

public class MgrTableActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private List o;
    private ListView p;
    private String q;
    private n r;

    public MgrTableActivity()
    {
    }

    static List a(MgrTableActivity mgrtableactivity)
    {
        return mgrtableactivity.a;
    }

    static List a(MgrTableActivity mgrtableactivity, List list)
    {
        mgrtableactivity.a = list;
        return list;
    }

    static List b(MgrTableActivity mgrtableactivity, List list)
    {
        mgrtableactivity.o = list;
        return list;
    }

    static void b(MgrTableActivity mgrtableactivity)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        csvreader = new CSVReader(new FileReader(mgrtableactivity.q));
        csvreader.readNext();
_L2:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        if (as[0] == null || "".equals(as[0].trim())) goto _L2; else goto _L1
_L1:
        FileNotFoundException filenotfoundexception;
        bo bo2;
        String s;
        Object aobj[];
        arraylist.add(new Table(as[0], false));
          goto _L2
        try
        {
            csvreader.close();
            (new d(new bb(mgrtableactivity, arraylist), mgrtableactivity, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            bo2 = new bo(mgrtableactivity);
            s = mgrtableactivity.getString(0x7f080269);
            aobj = new Object[2];
            aobj[0] = "table.csv";
            aobj[1] = f.d;
            bo2.a(String.format(s, aobj));
            bo2.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            bo bo1 = new bo(mgrtableactivity);
            bo1.a(String.format(mgrtableactivity.getString(0x7f08026a), new Object[] {
                "table.csv"
            }));
            bo1.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
    }

    static n c(MgrTableActivity mgrtableactivity)
    {
        return mgrtableactivity.r;
    }

    static void d(MgrTableActivity mgrtableactivity)
    {
        mgrtableactivity.p.setAdapter(new ar(mgrtableactivity, mgrtableactivity.a));
        TextView textview = (TextView)mgrtableactivity.findViewById(0x7f09016e);
        if (mgrtableactivity.a.size() > 0)
        {
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(0);
            return;
        }
    }

    static List e(MgrTableActivity mgrtableactivity)
    {
        return mgrtableactivity.o;
    }

    public final void a(Map map)
    {
        (new d(new bi(this, map), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300c1);
        setTitle(0x7f0802b9);
        r = new n(this);
        q = (new StringBuilder()).append(f.d).append("/table.csv").toString();
        p = (ListView)findViewById(0x7f0900a4);
        p.setOnItemClickListener(this);
        (new d(new bc(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        (new d(new bd(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f000d, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        n _tmp = r;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Table table = (Table)a.get(i);
        ah ah1 = new ah(this, table, o);
        ah1.setTitle(0x7f0800c1);
        ah1.b();
        ah1.a(new av(this));
        ah1.a(new aw(this, table));
        ah1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            ah ah1 = new ah(this, null, o);
            ah1.setTitle(0x7f0800c0);
            ah1.a(new ay(this));
            ah1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090314)
        {
            (new File(f.d)).mkdirs();
            com.aadhk.restpos.c.d d2 = new com.aadhk.restpos.c.d(this);
            String s = getString(0x7f08026c);
            Object aobj[] = new Object[1];
            aobj[0] = f.d;
            d2.setTitle(String.format(s, aobj));
            d2.a(new az(this));
            d2.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090313)
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(this);
            d1.setTitle(0x7f0800c2);
            d1.a(new ax(this));
            d1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
