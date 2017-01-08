// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Toast;
import au.com.bytecode.opencsv.CSVReader;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.j;
import com.aadhk.restpos.b.k;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.c.t;
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

// Referenced classes of package com.aadhk.restpos.d:
//            bb, ax, ay, av, 
//            aw, az, ba

public final class au extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private MgrModifierActivity a;
    private View b;
    private EditText c;
    private ListView d;
    private LinearLayout e;
    private Resources f;
    private Button g;
    private Button h;
    private j i;
    private k j;
    private LayoutInflater k;
    private bb l;
    private List m;
    private ModifierGroup n;
    private String o;
    private int p;

    public au()
    {
    }

    static List a(au au1)
    {
        return au1.m;
    }

    private void a()
    {
        if (m.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_397;
        }
        String as[] = {
            f.getString(0x7f090225), f.getString(0x7f090226), f.getString(0x7f090229)
        };
        ArrayList arraylist = new ArrayList();
        String as1[];
        for (Iterator iterator = m.iterator(); iterator.hasNext(); arraylist.add(as1))
        {
            Modifier modifier = (Modifier)iterator.next();
            as1 = new String[3];
            as1[0] = modifier.getName();
            as1[1] = (new StringBuilder()).append(modifier.getPrice()).toString();
            as1[2] = (new StringBuilder()).append(modifier.getType()).toString();
        }

        String s = (new StringBuilder()).append(d.d).append("/modifier_").append(com.aadhk.restpos.f.i.a()).append(".csv").toString();
        ax ax1;
        try
        {
            if (Environment.getExternalStorageDirectory().canWrite())
            {
                (new File(d.d)).mkdirs();
                com.aadhk.product.library.c.d.a(s, as, arraylist);
                ax ax2 = new ax(a);
                ax2.a((new StringBuilder()).append(f.getString(0x7f090221)).append(" ").append(s).toString());
                ax2.show();
                return;
            }
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(a, (new StringBuilder()).append(f.getString(0x7f090223)).append(" ").append(s).toString(), 1).show();
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
        ax1 = new ax(a);
        ax1.a(f.getString(0x7f090224));
        ax1.show();
        return;
        Toast.makeText(a, 0x7f090054, 1).show();
        return;
    }

    static void a(au au1, String s)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        csvreader = new CSVReader(new FileReader(s));
        csvreader.readNext();
_L1:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        FileNotFoundException filenotfoundexception;
        ax ax2;
        String s1;
        Object aobj[];
label0:
        {
            if (as.length != 3)
            {
                break label0;
            }
            Modifier modifier = new Modifier();
            modifier.setGroupId(au1.n.getId());
            modifier.setName(as[0].trim());
            modifier.setPrice(Double.parseDouble(as[1].trim()));
            modifier.setType(Integer.parseInt(as[2].trim()));
            arraylist.add(modifier);
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
            ax2 = new ax(au1.a);
            s1 = au1.f.getString(0x7f09021a);
            aobj = new Object[2];
            aobj[0] = "modifier.csv";
            aobj[1] = d.d;
            ax2.a(String.format(s1, aobj));
            ax2.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            ax ax1 = new ax(au1.a);
            ax1.a(String.format(au1.f.getString(0x7f09021b), new Object[] {
                "modifier.csv"
            }));
            ax1.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        csvreader.close();
        au1.m.addAll(arraylist);
        au1.l.notifyDataSetChanged();
        return;
    }

    static bb b(au au1)
    {
        return au1.l;
    }

    static j c(au au1)
    {
        return au1.i;
    }

    static ModifierGroup d(au au1)
    {
        return au1.n;
    }

    static k e(au au1)
    {
        return au1.j;
    }

    static MgrModifierActivity f(au au1)
    {
        return au1.a;
    }

    static LayoutInflater g(au au1)
    {
        return au1.k;
    }

    static int h(au au1)
    {
        return au1.p;
    }

    static String i(au au1)
    {
        return au1.o;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = a.a();
        i = new j(sqlitedatabase);
        j = new k(sqlitedatabase);
        Company company = ((POSApp)a.getApplicationContext()).b();
        o = company.getCurrencySign();
        p = company.getDecimalPlace();
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            n = (ModifierGroup)bundle1.getParcelable("bundleModifierGroup");
        }
        if (n == null)
        {
            n = new ModifierGroup();
        }
        if (n == null)
        {
            n = new ModifierGroup();
            h.setVisibility(8);
        } else
        {
            h.setVisibility(0);
        }
        c.setText(n.getName());
        m = i.b(n.getId());
        l = new bb(this, (byte)0);
        d.setAdapter(l);
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrModifierActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131427414: 41
    //                   2131427529: 169
    //                   2131427683: 313;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        String s2 = c.getText().toString();
        if (TextUtils.isEmpty(s2))
        {
            c.setError(getResources().getString(0x7f090055));
            c.requestFocus();
        } else
        {
            c.setError(null);
            n.setName(s2);
            flag = true;
        }
        if (flag)
        {
            if (m.isEmpty())
            {
                Toast.makeText(a, a.getString(0x7f09029e), 1).show();
                return;
            } else
            {
                j.a(n, m);
                a.b();
                return;
            }
        }
          goto _L1
_L3:
        String s = (new StringBuilder(" b.rowid=")).append(n.getId()).toString();
        if (j.a(s))
        {
            ax ax1 = new ax(a);
            ax1.a(f.getString(0x7f0900be));
            ax1.show();
            return;
        } else
        {
            g g1 = new g(a);
            String s1 = f.getString(0x7f090298);
            Object aobj[] = new Object[1];
            aobj[0] = n.getName();
            g1.setTitle(String.format(s1, aobj));
            g1.a(new com.aadhk.restpos.d.ax(this));
            g1.show();
            return;
        }
_L4:
        t t1 = new t(a, null, p);
        t1.setTitle(0x7f0900b9);
        t1.a(new ay(this, t1));
        t1.show();
        return;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        k = LayoutInflater.from(a);
        f = getResources();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        if (!a.c())
        {
            menu.removeItem(0x7f0b027f);
        }
        menuinflater.inflate(0x7f0f000a, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030070, viewgroup, false);
        d = (ListView)b.findViewById(0x7f0b0086);
        d.setOnItemClickListener(this);
        c = (EditText)b.findViewById(0x7f0b0162);
        g = (Button)b.findViewById(0x7f0b0056);
        h = (Button)b.findViewById(0x7f0b00c9);
        e = (LinearLayout)b.findViewById(0x7f0b0163);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        e.setOnClickListener(this);
        return b;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Modifier modifier = (Modifier)m.get(i1);
        t t1 = new t(a, modifier, p);
        t1.setTitle(0x7f0900ba);
        t1.b();
        t1.a(new av(this, t1));
        t1.a(new aw(this, modifier, t1));
        t1.show();
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b0291)
        {
            String as[] = com.aadhk.product.library.c.f.a(new File(d.d), "modifier[\\w\\W]*.csv");
            if (as != null && as.length > 0)
            {
                com.aadhk.product.library.b.k k1 = new com.aadhk.product.library.b.k(a, as, -1 + as.length);
                k1.setTitle(0x7f090234);
                k1.a(new az(this, as));
                k1.show();
                return true;
            } else
            {
                Toast.makeText(a, 0x7f090235, 1).show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b0290)
        {
            if (j.a(null))
            {
                ax ax1 = new ax(a);
                ax1.a(0x7f0900bf);
                ax1.show();
                return true;
            } else
            {
                g g1 = new g(a);
                g1.setTitle(0x7f0900bc);
                g1.a(new ba(this));
                g1.show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b0292)
        {
            a();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
