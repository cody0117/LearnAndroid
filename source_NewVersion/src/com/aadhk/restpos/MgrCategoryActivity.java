// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
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
import com.aadhk.restpos.a.ai;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.c.r;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.i;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, al, am, ao, 
//            ap, ak

public class MgrCategoryActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView l;
    private b m;

    public MgrCategoryActivity()
    {
    }

    static b a(MgrCategoryActivity mgrcategoryactivity)
    {
        return mgrcategoryactivity.m;
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
            break MISSING_BLOCK_LABEL_215;
        }
        FileNotFoundException filenotfoundexception;
        ax ax3;
        String s1;
        Object aobj[];
label0:
        {
            if (as.length != 1)
            {
                break label0;
            }
            Category category = new Category();
            category.setName(as[0]);
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
            ax3 = new ax(mgrcategoryactivity);
            s1 = mgrcategoryactivity.b.getString(0x7f09021a);
            aobj = new Object[2];
            aobj[0] = "category.csv";
            aobj[1] = d.d;
            ax3.a(String.format(s1, aobj));
            ax3.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            ax ax2 = new ax(mgrcategoryactivity);
            ax2.a(String.format(mgrcategoryactivity.b.getString(0x7f09021b), new Object[] {
                "category.csv"
            }));
            ax2.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            ax ax1 = new ax(mgrcategoryactivity);
            ax1.a(0x7f09021c);
            ax1.show();
            numberformatexception.printStackTrace();
            BugSenseHandler.sendException(numberformatexception);
            return;
        }
        csvreader.close();
        mgrcategoryactivity.m.a(arraylist);
        mgrcategoryactivity.a();
        return;
    }

    private void b()
    {
        if (a.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_324;
        }
        String as[] = {
            b.getString(0x7f090225)
        };
        ArrayList arraylist = new ArrayList();
        String as1[];
        for (Iterator iterator = a.iterator(); iterator.hasNext(); arraylist.add(as1))
        {
            Category category = (Category)iterator.next();
            as1 = new String[1];
            as1[0] = category.getName();
        }

        File file = Environment.getExternalStorageDirectory();
        String s = (new StringBuilder()).append(d.d).append("/category_").append(i.a()).append(".csv").toString();
        ax ax1;
        try
        {
            if (file.canWrite())
            {
                (new File(d.d)).mkdirs();
                com.aadhk.product.library.c.d.a(s, as, arraylist);
                ax ax2 = new ax(this);
                ax2.a((new StringBuilder()).append(b.getString(0x7f090221)).append(" ").append(s).toString());
                ax2.show();
                return;
            }
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(this, (new StringBuilder()).append(b.getString(0x7f090223)).append(" ").append(s).toString(), 1).show();
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
        ax1 = new ax(this);
        ax1.a(b.getString(0x7f090224));
        ax1.show();
        return;
        Toast.makeText(this, 0x7f090054, 1).show();
        return;
    }

    public final void a()
    {
        a = m.b();
        l.setAdapter(new ai(this, a));
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
        setContentView(0x7f03009f);
        setTitle(0x7f090262);
        m = new b(f.a().b());
        l = (ListView)findViewById(0x7f0b0086);
        l.setOnItemClickListener(this);
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0008, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int j, long l1)
    {
        Category category = (Category)a.get(j);
        r r1 = new r(this, category.getName());
        r1.setTitle(0x7f0900b6);
        r1.b();
        r1.a(new al(this, category, r1));
        r1.a(new am(this, category));
        r1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            r r1 = new r(this, null);
            r1.setTitle(0x7f0900b5);
            r1.a(new ao(this, r1));
            r1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0291)
        {
            String as[] = com.aadhk.product.library.c.f.a(new File(d.d), "category[\\w\\W]*.csv");
            if (as != null && as.length > 0)
            {
                k k1 = new k(this, as, -1 + as.length);
                k1.setTitle(0x7f090234);
                k1.a(new ap(this, as));
                k1.show();
                return true;
            } else
            {
                Toast.makeText(this, 0x7f090235, 1).show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b0290)
        {
            if (m.a(null))
            {
                ax ax1 = new ax(this);
                ax1.a(0x7f0900c0);
                ax1.show();
                return true;
            } else
            {
                g g1 = new g(this);
                g1.setTitle(0x7f0900b7);
                g1.a(new ak(this));
                g1.show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b0292)
        {
            b();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
