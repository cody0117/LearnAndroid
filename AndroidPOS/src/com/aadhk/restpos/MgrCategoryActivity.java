// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import au.com.bytecode.opencsv.CSVReader;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.d;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.a.al;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.p;
import com.aadhk.restpos.g.j;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.o;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, aj, ao, am, 
//            ad, ae, ag, ah, 
//            ac

public class MgrCategoryActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView o;
    private j p;

    public MgrCategoryActivity()
    {
    }

    static List a(MgrCategoryActivity mgrcategoryactivity)
    {
        return mgrcategoryactivity.a;
    }

    static List a(MgrCategoryActivity mgrcategoryactivity, List list)
    {
        mgrcategoryactivity.a = list;
        return list;
    }

    private void a()
    {
        if (a.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_339;
        }
        String as[] = {
            getString(0x7f080274), getString(0x7f080279)
        };
        ArrayList arraylist = new ArrayList();
        String as1[];
        for (Iterator iterator = a.iterator(); iterator.hasNext(); arraylist.add(as1))
        {
            Category category = (Category)iterator.next();
            as1 = new String[2];
            as1[0] = category.getName();
            as1[1] = (new StringBuilder()).append(category.getSequence()).toString();
        }

        File file = Environment.getExternalStorageDirectory();
        String s = (new StringBuilder()).append(f.d).append("/category_").append(com.aadhk.restpos.util.o.a()).append(".csv").toString();
        bo bo1;
        try
        {
            if (file.canWrite())
            {
                (new File(f.d)).mkdirs();
                d.a(s, as, arraylist);
                bo bo2 = new bo(this);
                bo2.a((new StringBuilder()).append(getString(0x7f080270)).append(" ").append(s).toString());
                bo2.show();
                return;
            }
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(this, (new StringBuilder()).append(getString(0x7f080272)).append(" ").append(s).toString(), 1).show();
            notfoundexception.printStackTrace();
            BugSenseHandler.sendException(notfoundexception);
            return;
        }
        catch (SQLException sqlexception)
        {
            sqlexception.printStackTrace();
            BugSenseHandler.sendException(sqlexception);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        bo1 = new bo(this);
        bo1.a(0x7f080273);
        bo1.show();
        return;
        Toast.makeText(this, 0x7f080084, 1).show();
        return;
    }

    static void a(MgrCategoryActivity mgrcategoryactivity, String s)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        csvreader = new CSVReader(new FileReader(s));
        csvreader.readNext();
_L1:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        FileNotFoundException filenotfoundexception;
        bo bo3;
        String s1;
        Object aobj[];
label0:
        {
            if (as.length != 2)
            {
                break label0;
            }
            Category category = new Category();
            category.setName(as[0]);
            category.setSequence(h.e(as[1]));
            arraylist.add(category);
        }
          goto _L1
        try
        {
            csvreader.close();
            throw new NumberFormatException("import formmat error");
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            bo3 = new bo(mgrcategoryactivity);
            s1 = mgrcategoryactivity.getString(0x7f080269);
            aobj = new Object[2];
            aobj[0] = "category.csv";
            aobj[1] = f.d;
            bo3.a(String.format(s1, aobj));
            bo3.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            bo bo2 = new bo(mgrcategoryactivity);
            bo2.a(String.format(mgrcategoryactivity.getString(0x7f08026a), new Object[] {
                "category.csv"
            }));
            bo2.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            bo bo1 = new bo(mgrcategoryactivity);
            bo1.a(0x7f08026b);
            bo1.show();
            numberformatexception.printStackTrace();
            BugSenseHandler.sendException(numberformatexception);
            return;
        }
        csvreader.close();
        (new com.aadhk.product.library.a.d(new aj(mgrcategoryactivity, arraylist), mgrcategoryactivity, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
    }

    static j b(MgrCategoryActivity mgrcategoryactivity)
    {
        return mgrcategoryactivity.p;
    }

    static void c(MgrCategoryActivity mgrcategoryactivity)
    {
        mgrcategoryactivity.o.setAdapter(new al(mgrcategoryactivity, mgrcategoryactivity.a));
        TextView textview = (TextView)mgrcategoryactivity.findViewById(0x7f09016e);
        if (mgrcategoryactivity.a.size() > 0)
        {
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(0);
            return;
        }
    }

    public final void a(Map map)
    {
        (new com.aadhk.product.library.a.d(new ao(this, map), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300bd);
        setTitle(0x7f0802bd);
        p = new j(this);
        o = (ListView)findViewById(0x7f0900a4);
        o.setOnItemClickListener(this);
        (new com.aadhk.product.library.a.d(new am(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f000a, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        j _tmp = p;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Category category = (Category)a.get(i);
        p p1 = new p(this, category.getName());
        p1.setTitle(0x7f0800c4);
        p1.b();
        p1.a(new ad(this, category));
        p1.a(new ae(this, category));
        p1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            p p1 = new p(this, null);
            p1.setTitle(0x7f0800c3);
            p1.a(new ag(this));
            p1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090314)
        {
            String as[] = com.aadhk.product.library.c.f.a(new File(f.d), "category[\\w\\W]*.csv");
            if (as != null && as.length > 0)
            {
                k k1 = new k(this, as, -1 + as.length);
                k1.setTitle(0x7f080285);
                k1.a(new ah(this, as));
                k1.show();
                return true;
            } else
            {
                Toast.makeText(this, 0x7f080286, 1).show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f090313)
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(this);
            d1.setTitle(0x7f0800c5);
            d1.a(new ac(this));
            d1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090315)
        {
            a();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
