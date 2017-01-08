// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import au.com.bytecode.opencsv.CSVReader;
import com.aadhk.restpos.a.am;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.c.r;
import com.aadhk.restpos.f.d;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, as, at, av, 
//            aw, au

public class MgrTableActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView l;
    private v m;
    private m n;
    private String o;

    public MgrTableActivity()
    {
    }

    static v a(MgrTableActivity mgrtableactivity)
    {
        return mgrtableactivity.m;
    }

    private void a()
    {
        a = m.b();
        l.setAdapter(new am(this, a));
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

    static void b(MgrTableActivity mgrtableactivity)
    {
        mgrtableactivity.a();
    }

    static m c(MgrTableActivity mgrtableactivity)
    {
        return mgrtableactivity.n;
    }

    static void d(MgrTableActivity mgrtableactivity)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        csvreader = new CSVReader(new FileReader(mgrtableactivity.o));
        csvreader.readNext();
_L2:
        String as1[] = csvreader.readNext();
        if (as1 == null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        if (as1[0] == null || "".equals(as1[0].trim())) goto _L2; else goto _L1
_L1:
        FileNotFoundException filenotfoundexception;
        ax ax2;
        String s;
        Object aobj[];
        arraylist.add(new Table(as1[0], false));
          goto _L2
        try
        {
            csvreader.close();
            mgrtableactivity.m.a(arraylist);
            mgrtableactivity.a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            ax2 = new ax(mgrtableactivity);
            s = mgrtableactivity.b.getString(0x7f09021a);
            aobj = new Object[2];
            aobj[0] = "table.csv";
            aobj[1] = d.d;
            ax2.a(String.format(s, aobj));
            ax2.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            ax ax1 = new ax(mgrtableactivity);
            ax1.a(String.format(mgrtableactivity.b.getString(0x7f09021b), new Object[] {
                "table.csv"
            }));
            ax1.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300a3);
        setTitle(0x7f09025e);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        m = new v(sqlitedatabase);
        n = new m(sqlitedatabase);
        o = (new StringBuilder()).append(d.d).append("/table.csv").toString();
        l = (ListView)findViewById(0x7f0b0086);
        l.setOnItemClickListener(this);
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f000b, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        Table table = (Table)a.get(i);
        r r1 = new r(this, table.getName());
        r1.setTitle(0x7f0900b3);
        r1.b();
        r1.a(new as(this, table));
        r1.a(new at(this, table));
        r1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            r r1 = new r(this, null);
            r1.setTitle(0x7f0900b2);
            r1.a(new av(this));
            r1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0291)
        {
            (new File(d.d)).mkdirs();
            g g2 = new g(this);
            String s = b.getString(0x7f09021d);
            Object aobj[] = new Object[1];
            aobj[0] = d.d;
            g2.setTitle(String.format(s, aobj));
            g2.a(new aw(this));
            g2.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0290)
        {
            if (n.a(null))
            {
                ax ax1 = new ax(this);
                ax1.a(0x7f0900bd);
                ax1.show();
                return true;
            } else
            {
                g g1 = new g(this);
                g1.setTitle(0x7f0900b4);
                g1.a(new au(this));
                g1.show();
                return true;
            }
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
