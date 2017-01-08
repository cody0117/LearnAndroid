// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import au.com.bytecode.opencsv.CSVReader;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.cx;
import com.aadhk.restpos.c.da;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.o;
import com.bugsense.trace.BugSenseHandler;
import com.viewpagerindicator.TabPageIndicator;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ct, cp, cq, ch, 
//            cj, ck, cv, cl, 
//            cw, co, cn, cm, 
//            cg, ci

public final class cf extends Fragment
{

    private static com.aadhk.restpos.g.k j;
    public MgrItemActivity a;
    private cq b;
    private List c;
    private long d;
    private View e;
    private Company f;
    private List g;
    private List h;
    private String i;
    private ViewPager k;

    public cf()
    {
    }

    static long a(cf cf1, long l)
    {
        cf1.d = l;
        return l;
    }

    static com.aadhk.restpos.g.k a()
    {
        return j;
    }

    static List a(cf cf1)
    {
        return cf1.g;
    }

    static void a(cf cf1, String s)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        String s2;
        String s3;
        csvreader = new CSVReader(new FileReader(s));
        csvreader.readNext();
        s2 = cf1.getString(0x7f07003b);
        s3 = cf1.getString(0x7f07003c);
_L1:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_414;
        }
        Item item;
        String s4;
        if (as.length != 11)
        {
            break MISSING_BLOCK_LABEL_346;
        }
        item = new Item();
        item.setCategoryId(cf1.d);
        item.setName(as[0]);
        item.setPrice(com.aadhk.product.library.c.h.d(as[1]));
        s4 = as[2];
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_340;
        }
        boolean flag;
        if (s4.equals(""))
        {
            break MISSING_BLOCK_LABEL_340;
        }
        flag = Boolean.parseBoolean(s4);
_L2:
        FileNotFoundException filenotfoundexception;
        bo bo3;
        String s1;
        Object aobj[];
        item.setAskPrice(flag);
        item.setCost(com.aadhk.product.library.c.h.d(as[3]));
        item.setModifierGroupIds(as[4]);
        item.setKitchenNoteGroupIds(as[5]);
        item.setPrinterId(com.aadhk.product.library.c.h.e(as[6]));
        item.setTax1Id(com.aadhk.product.library.c.h.e(as[7]));
        item.setBackground(as[8]);
        item.setFontColor(as[9]);
        item.setSequence(com.aadhk.product.library.c.h.e(as[10]));
        if (TextUtils.isEmpty(item.getBackground()))
        {
            item.setBackground(s2);
        }
        if (TextUtils.isEmpty(item.getFontColor()))
        {
            item.setFontColor(s3);
        }
        arraylist.add(item);
          goto _L1
        flag = false;
          goto _L2
        try
        {
            csvreader.close();
            throw new NumberFormatException("import formmat error");
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            bo3 = new bo(cf1.a);
            s1 = cf1.getString(0x7f080269);
            aobj = new Object[2];
            aobj[0] = "item.csv";
            aobj[1] = f.d;
            bo3.a(String.format(s1, aobj));
            bo3.show();
            filenotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            bo bo2 = new bo(cf1.a);
            bo2.a(String.format(cf1.getString(0x7f08026a), new Object[] {
                "item.csv"
            }));
            bo2.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            bo bo1 = new bo(cf1.a);
            bo1.a(0x7f08026b);
            bo1.show();
            numberformatexception.printStackTrace();
            BugSenseHandler.sendException(numberformatexception);
            return;
        }
          goto _L1
        csvreader.close();
        (new d(new ct(cf1, arraylist), cf1.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
    }

    static void a(cf cf1, List list)
    {
        if (list.size() > 0)
        {
            if (Environment.getExternalStorageDirectory().canWrite())
            {
                String as[] = {
                    cf1.getString(0x7f080274), cf1.getString(0x7f080275), cf1.getString(0x7f080293), cf1.getString(0x7f080296), cf1.getString(0x7f080283), cf1.getString(0x7f080136), cf1.getString(0x7f080276), cf1.getString(0x7f080277), cf1.getString(0x7f08028c), cf1.getString(0x7f08028d), 
                    cf1.getString(0x7f080279)
                };
                ArrayList arraylist = new ArrayList();
                String as1[];
                for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(as1))
                {
                    Item item = (Item)iterator.next();
                    as1 = new String[11];
                    as1[0] = item.getName();
                    as1[1] = (new StringBuilder()).append(item.getPrice()).toString();
                    as1[2] = (new StringBuilder()).append(item.isAskPrice()).toString();
                    as1[3] = (new StringBuilder()).append(item.getCost()).toString();
                    as1[4] = com.aadhk.product.library.c.h.c(item.getModifierGroupIds());
                    as1[5] = com.aadhk.product.library.c.h.c(item.getKitchenNoteGroupIds());
                    as1[6] = (new StringBuilder()).append(item.getPrinterId()).toString();
                    as1[7] = (new StringBuilder()).append(item.getTax1Id()).toString();
                    as1[8] = item.getBackground();
                    as1[9] = item.getFontColor();
                    as1[10] = (new StringBuilder()).append(item.getSequence()).toString();
                }

                cf1.i = (new StringBuilder()).append(f.d).append("/item_").append(o.a()).append(".csv").toString();
                (new File(f.d)).mkdirs();
                try
                {
                    com.aadhk.product.library.c.d.a(cf1.i, as, arraylist);
                    bo bo1 = new bo(cf1.a);
                    bo1.a((new StringBuilder()).append(cf1.getString(0x7f080270)).append(" ").append(cf1.i).toString());
                    bo1.show();
                    return;
                }
                catch (android.content.res.Resources.NotFoundException notfoundexception)
                {
                    Toast.makeText(cf1.a, (new StringBuilder()).append(cf1.getString(0x7f080272)).append(" ").append(cf1.i).toString(), 1).show();
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
            } else
            {
                bo bo2 = new bo(cf1.a);
                bo2.setTitle(0x7f080273);
                bo2.show();
                return;
            }
        } else
        {
            Toast.makeText(cf1.a, 0x7f080084, 1).show();
            return;
        }
    }

    static long b(cf cf1)
    {
        return cf1.d;
    }

    static List b(cf cf1, List list)
    {
        cf1.c = list;
        return list;
    }

    static cq c(cf cf1)
    {
        return cf1.b;
    }

    static List d(cf cf1)
    {
        return cf1.h;
    }

    static void e(cf cf1)
    {
        TabPageIndicator tabpageindicator;
        if (cf1.c.isEmpty())
        {
            bo bo1 = new bo(cf1.a);
            bo1.a(0x7f080287);
            bo1.a(new cp(cf1));
            bo1.show();
        } else
        {
            cf1.d = ((Category)cf1.c.get(0)).getId();
            cf1.a.a(cf1.d);
            cf1.a.a(((Category)cf1.c.get(0)).getItemList());
        }
        cf1.b = new cq(cf1, cf1.getChildFragmentManager());
        cf1.k = (ViewPager)cf1.e.findViewById(0x7f090186);
        cf1.k.setAdapter(cf1.b);
        tabpageindicator = (TabPageIndicator)cf1.e.findViewById(0x7f090185);
        tabpageindicator.a(cf1.k);
        tabpageindicator.setVisibility(0);
        tabpageindicator.a(new ch(cf1));
        cf1.k.setCurrentItem(cf1.a.h());
    }

    static List f(cf cf1)
    {
        return cf1.c;
    }

    public final void a(List list)
    {
        g = list;
        com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
        d1.setTitle(0x7f0802fc);
        d1.a(new cj(this));
        d1.show();
    }

    public final void b(List list)
    {
        h = list;
        com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
        d1.setTitle(0x7f0800ed);
        d1.a(new ck(this));
        d1.show();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        j = a.m();
        f = ((POSApp)a.getApplicationContext()).b();
        (new d(new cv(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrItemActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a.setTitle(0x7f0802bf);
        setHasOptionsMenu(true);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f000b, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = layoutinflater.inflate(0x7f0300c6, viewgroup, false);
        return e;
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            a.a(null);
            return true;
        }
        if (menuitem.getItemId() == 0x7f090314)
        {
            String as2[] = com.aadhk.product.library.c.f.a(new File(f.d), "item[\\w\\W]*.csv");
            if (as2 != null && as2.length > 0)
            {
                k k2 = new k(a, as2, -1 + as2.length);
                k2.setTitle(0x7f080285);
                k2.a(new cl(this, as2));
                k2.show();
            } else
            {
                Toast.makeText(a, 0x7f080286, 1).show();
            }
            return true;
        }
        if (menuitem.getItemId() == 0x7f090315)
        {
            (new d(new cw(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return true;
        }
        if (menuitem.getItemId() == 0x7f090313)
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(a);
            d1.setTitle(0x7f0800c6);
            d1.a(new co(this));
            d1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090317)
        {
            List list = a.k();
            List list1 = a.l();
            String as1[] = (String[])list.toArray(new String[list.size()]);
            k k1 = new k(a, as1, 0);
            k1.setTitle(0x7f08027d);
            k1.a(new cn(this, list1));
            k1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f09019c)
        {
            ArrayList arraylist = new ArrayList();
            if (!TextUtils.isEmpty(f.getTax1Name()))
            {
                arraylist.add(f.getTax1Name());
            }
            if (!TextUtils.isEmpty(f.getTax2Name()))
            {
                arraylist.add(f.getTax2Name());
            }
            if (!TextUtils.isEmpty(f.getTax3Name()))
            {
                arraylist.add(f.getTax3Name());
            }
            String as[] = (String[])arraylist.toArray(new String[arraylist.size()]);
            boolean aflag[] = {
                0, 0, 0
            };
            com.aadhk.product.library.b.h h1 = new com.aadhk.product.library.b.h(a, as, aflag);
            h1.setTitle(0x7f08027e);
            h1.a(new cm(this));
            h1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090318)
        {
            da da1 = new da(a, null);
            da1.setTitle(a.getString(0x7f0802c1));
            da1.a(new cg(this));
            da1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090319)
        {
            cx cx1 = new cx(a, null);
            cx1.setTitle(a.getString(0x7f0800ec));
            cx1.a(new ci(this));
            cx1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
