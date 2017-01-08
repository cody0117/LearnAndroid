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
import com.aadhk.restpos.KitchenNoteActivity;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.s;
import com.aadhk.restpos.g.g;
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
//            bf, bj, bh, bb, 
//            bc, ba, bd, be

public final class az extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private KitchenNoteActivity a;
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
    private bf l;
    private List m;
    private KitchenNote n;
    private g o;

    public az()
    {
    }

    static KitchenNote a(az az1)
    {
        return az1.n;
    }

    static KitchenNoteActivity b(az az1)
    {
        return az1.a;
    }

    static List c(az az1)
    {
        return az1.m;
    }

    private void c()
    {
        m.clear();
        n = new KitchenNote();
        f.setVisibility(8);
        c.setText(n.getName());
        d();
    }

    static bf d(az az1)
    {
        return az1.l;
    }

    private void d()
    {
        l = new bf(this, (byte)0);
        d.setAdapter(l);
    }

    static LayoutInflater e(az az1)
    {
        return az1.k;
    }

    private void e()
    {
        String as[];
        ArrayList arraylist;
        File file;
        String s1;
        if (m.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        as = (new String[] {
            getString(0x7f080274)
        });
        arraylist = new ArrayList();
        String as1[];
        for (Iterator iterator = m.iterator(); iterator.hasNext(); arraylist.add(as1))
        {
            KitchenNote kitchennote = (KitchenNote)iterator.next();
            as1 = new String[1];
            as1[0] = kitchennote.getName();
        }

        file = Environment.getExternalStorageDirectory();
        s1 = (new StringBuilder()).append(f.d).append("/kitchenNote_").append(com.aadhk.restpos.util.o.a()).append(".csv").toString();
        if (file.canWrite())
        {
            (new File(f.d)).mkdirs();
            com.aadhk.product.library.c.d.a(s1, as, arraylist);
            bo bo2 = new bo(a);
            bo2.a((new StringBuilder()).append(getString(0x7f080270)).append(" ").append(s1).toString());
            bo2.show();
            return;
        }
        try
        {
            bo bo1 = new bo(a);
            bo1.a(getString(0x7f080273));
            bo1.show();
            return;
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(a, (new StringBuilder()).append(getString(0x7f080272)).append(" ").append(s1).toString(), 1).show();
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
        }
    }

    static g f(az az1)
    {
        return az1.o;
    }

    static void g(az az1)
    {
        az1.c();
    }

    public final int a()
    {
        KitchenNote kitchennote = n;
        int i1 = 0;
        if (kitchennote != null)
        {
            i1 = n.getId();
        }
        return i1;
    }

    public final void a(String s1)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        csvreader = new CSVReader(new FileReader(s1));
        csvreader.readNext();
_L1:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        FileNotFoundException filenotfoundexception;
        bo bo2;
        String s2;
        Object aobj[];
label0:
        {
            if (as.length != 1)
            {
                break label0;
            }
            KitchenNote kitchennote = new KitchenNote();
            kitchennote.setName(as[0].trim());
            arraylist.add(kitchennote);
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
            bo2 = new bo(a);
            s2 = getString(0x7f080269);
            aobj = new Object[2];
            aobj[0] = "modifier.csv";
            aobj[1] = f.d;
            bo2.a(String.format(s2, aobj));
            bo2.show();
            filenotfoundexception.printStackTrace();
            BugSenseHandler.sendException(filenotfoundexception);
            return;
        }
        catch (IOException ioexception)
        {
            bo bo1 = new bo(a);
            bo1.a(String.format(getString(0x7f08026a), new Object[] {
                "modifier.csv"
            }));
            bo1.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        csvreader.close();
        m.addAll(arraylist);
        l.notifyDataSetChanged();
        return;
    }

    public final String b()
    {
        return c.getText().toString();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        o = a.b();
        m = new ArrayList();
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            n = (KitchenNote)bundle1.getParcelable("kitchenNote");
        }
        if (n == null)
        {
            c();
            return;
        } else
        {
            m.addAll(n.getListNote());
            f.setVisibility(0);
            c.setText(n.getName());
            d();
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        a = (KitchenNoteActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 6: default 64
    //                   2131296323: 346
    //                   2131296324: 387
    //                   2131296325: 404
    //                   2131296326: 494
    //                   2131296346: 65
    //                   2131296476: 276;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return;
_L6:
        String s3 = c.getText().toString();
        boolean flag;
        if (TextUtils.isEmpty(s3))
        {
            c.setError(getString(0x7f080085));
            c.requestFocus();
            flag = false;
        } else
        {
            c.setError(null);
            n.setName(s3);
            flag = true;
        }
        if (flag)
        {
            if (m.isEmpty())
            {
                Toast.makeText(a, a.getString(0x7f0800ee), 1).show();
                return;
            }
            n.setName(c.getText().toString());
            n.setListNote(m);
            if (n.getId() != 0)
            {
                (new com.aadhk.product.library.a.d(new bj(this, n), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                (new com.aadhk.product.library.a.d(new bh(this, n), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
          goto _L1
_L7:
        com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
        String s2 = getString(0x7f0802f7);
        Object aobj[] = new Object[1];
        aobj[0] = n.getName();
        d1.setTitle(String.format(s2, aobj));
        d1.a(new bb(this));
        d1.show();
        return;
_L2:
        s s1 = new s(a, null);
        s1.setTitle(0x7f0802e3);
        s1.a(new bc(this));
        s1.show();
        return;
_L3:
        m.clear();
        l.notifyDataSetChanged();
        return;
_L4:
        String as[] = com.aadhk.product.library.c.f.a(new File(f.d), "kitchenNote[\\w\\W]*.csv");
        if (as != null && as.length > 0)
        {
            k k1 = new k(a, as, -1 + as.length);
            k1.setTitle(0x7f080285);
            k1.a(new ba(this, as));
            k1.show();
            return;
        } else
        {
            Toast.makeText(a, a.getString(0x7f080286), 1).show();
            return;
        }
_L5:
        e();
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
        if (!a.a())
        {
            menu.removeItem(0x7f090301);
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f03007f, viewgroup, false);
        d = (ListView)b.findViewById(0x7f0900a4);
        d.setOnItemClickListener(this);
        c = (EditText)b.findViewById(0x7f09018e);
        e = (Button)b.findViewById(0x7f09005a);
        f = (Button)b.findViewById(0x7f0900dc);
        g = (Button)b.findViewById(0x7f090043);
        h = (Button)b.findViewById(0x7f090044);
        i = (Button)b.findViewById(0x7f090045);
        j = (Button)b.findViewById(0x7f090046);
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
        KitchenNote kitchennote = (KitchenNote)m.get(i1);
        s s1 = new s(a, kitchennote);
        s1.setTitle(0x7f0802e4);
        s1.b();
        s1.a(new bd(this));
        s1.a(new be(this, kitchennote));
        s1.show();
    }
}
