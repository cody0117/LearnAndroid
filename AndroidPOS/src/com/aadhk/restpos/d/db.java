// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;
import au.com.bytecode.opencsv.CSVReader;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.d;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.u;
import com.aadhk.restpos.g.l;
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

// Referenced classes of package com.aadhk.restpos.d:
//            dh, dl, de, df, 
//            dg, dc, dd

public final class db extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private MgrModifierActivity a;
    private View b;
    private EditText c;
    private ListView d;
    private Button e;
    private Button f;
    private Button g;
    private Button h;
    private Button i;
    private Button j;
    private LayoutInflater k;
    private dh l;
    private List m;
    private ModifierGroup n;
    private String o;
    private int p;
    private l q;

    public db()
    {
    }

    static dh a(db db1)
    {
        return db1.l;
    }

    private void a()
    {
        m.clear();
        n = new ModifierGroup();
        f.setVisibility(8);
        c.setText(n.getName());
        b();
    }

    static void a(db db1, String s)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        csvreader = new CSVReader(new FileReader(s));
        csvreader.readNext();
_L1:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        FileNotFoundException filenotfoundexception;
        bo bo2;
        String s1;
        Object aobj[];
label0:
        {
            if (as.length != 3)
            {
                break label0;
            }
            Modifier modifier = new Modifier();
            modifier.setGroupId(db1.n.getId());
            modifier.setName(as[0].trim());
            modifier.setPrice(com.aadhk.product.library.c.h.d(as[1].trim()));
            modifier.setType(com.aadhk.product.library.c.h.e(as[2].trim()));
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
            bo2 = new bo(db1.a);
            s1 = db1.getString(0x7f080269);
            aobj = new Object[2];
            aobj[0] = "modifier.csv";
            aobj[1] = f.d;
            bo2.a(String.format(s1, aobj));
            bo2.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            bo bo1 = new bo(db1.a);
            bo1.a(String.format(db1.getString(0x7f08026a), new Object[] {
                "modifier.csv"
            }));
            bo1.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        csvreader.close();
        db1.m.addAll(arraylist);
        db1.l.notifyDataSetChanged();
        return;
    }

    static MgrModifierActivity b(db db1)
    {
        return db1.a;
    }

    private void b()
    {
        l = new dh(this, (byte)0);
        d.setAdapter(l);
    }

    static l c(db db1)
    {
        return db1.q;
    }

    private void c()
    {
        if (m.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_382;
        }
        String as[] = {
            getString(0x7f080274), getString(0x7f080275), getString(0x7f080278)
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

        String s = (new StringBuilder()).append(f.d).append("/modifier_").append(com.aadhk.restpos.util.o.a()).append(".csv").toString();
        bo bo1;
        try
        {
            if (Environment.getExternalStorageDirectory().canWrite())
            {
                (new File(f.d)).mkdirs();
                com.aadhk.product.library.c.d.a(s, as, arraylist);
                bo bo2 = new bo(a);
                bo2.a((new StringBuilder()).append(getString(0x7f080270)).append(" ").append(s).toString());
                bo2.show();
                return;
            }
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(a, (new StringBuilder()).append(getString(0x7f080272)).append(" ").append(s).toString(), 1).show();
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
        bo1 = new bo(a);
        bo1.a(0x7f080273);
        bo1.show();
        return;
        Toast.makeText(a, 0x7f080084, 1).show();
        return;
    }

    static List d(db db1)
    {
        return db1.m;
    }

    static ModifierGroup e(db db1)
    {
        return db1.n;
    }

    static void f(db db1)
    {
        db1.a();
    }

    static LayoutInflater g(db db1)
    {
        return db1.k;
    }

    static int h(db db1)
    {
        return db1.p;
    }

    static String i(db db1)
    {
        return db1.o;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        q = a.a();
        Company company = ((POSApp)a.getApplicationContext()).b();
        o = company.getCurrencySign();
        p = company.getDecimalPlace();
        m = new ArrayList();
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            n = (ModifierGroup)bundle1.getParcelable("bundleModifierGroup");
        }
        if (n == null)
        {
            a();
            return;
        } else
        {
            m.addAll(n.getModifiers());
            f.setVisibility(0);
            c.setText(n.getName());
            b();
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrModifierActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 6: default 64
    //                   2131296346: 65
    //                   2131296476: 199
    //                   2131296686: 269
    //                   2131296687: 316
    //                   2131296688: 333
    //                   2131296689: 416;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return;
_L2:
        String s1 = c.getText().toString();
        boolean flag;
        if (TextUtils.isEmpty(s1))
        {
            c.setError(getString(0x7f080085));
            c.requestFocus();
            flag = false;
        } else
        {
            c.setError(null);
            n.setName(s1);
            flag = true;
        }
        if (flag)
        {
            if (m.isEmpty())
            {
                Toast.makeText(a, getString(0x7f0802fd), 1).show();
                return;
            } else
            {
                (new com.aadhk.product.library.a.d(new dl(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
          goto _L1
_L3:
        com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
        String s = getString(0x7f0802f7);
        Object aobj[] = new Object[1];
        aobj[0] = n.getName();
        d1.setTitle(String.format(s, aobj));
        d1.a(new de(this));
        d1.show();
        return;
_L4:
        u u1 = new u(a, null, p);
        u1.setTitle(0x7f0800c7);
        u1.a(new df(this, u1));
        u1.show();
        return;
_L5:
        m.clear();
        l.notifyDataSetChanged();
        return;
_L6:
        String as[] = com.aadhk.product.library.c.f.a(new File(f.d), "modifier[\\w\\W]*.csv");
        if (as != null && as.length > 0)
        {
            k k1 = new k(a, as, -1 + as.length);
            k1.setTitle(0x7f080285);
            k1.a(new dg(this, as));
            k1.show();
            return;
        } else
        {
            Toast.makeText(a, 0x7f080286, 1).show();
            return;
        }
_L7:
        c();
        return;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        k = LayoutInflater.from(a);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        if (!a.b())
        {
            menu.removeItem(0x7f090301);
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030087, viewgroup, false);
        d = (ListView)b.findViewById(0x7f0900a4);
        d.setOnItemClickListener(this);
        c = (EditText)b.findViewById(0x7f0901ac);
        e = (Button)b.findViewById(0x7f09005a);
        f = (Button)b.findViewById(0x7f0900dc);
        g = (Button)b.findViewById(0x7f0901ae);
        h = (Button)b.findViewById(0x7f0901af);
        i = (Button)b.findViewById(0x7f0901b0);
        j = (Button)b.findViewById(0x7f0901b1);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        i.setOnClickListener(this);
        j.setOnClickListener(this);
        return b;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        Modifier modifier = (Modifier)m.get(i1);
        u u1 = new u(a, modifier, p);
        u1.setTitle(0x7f0800c8);
        u1.b();
        u1.a(new dc(this, u1));
        u1.a(new dd(this, modifier));
        u1.show();
    }
}
