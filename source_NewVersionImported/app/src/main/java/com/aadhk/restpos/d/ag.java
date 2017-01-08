// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
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
import com.aadhk.product.library.b.h;
import com.aadhk.product.library.b.k;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.f.d;
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
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ao, ah, am, an, 
//            ai, al, ak, aj

public final class ag extends Fragment
{

    private static i i;
    private ao a;
    private MgrItemActivity b;
    private TabPageIndicator c;
    private ViewPager d;
    private List e;
    private long f;
    private View g;
    private n h;
    private Map j;
    private Company k;
    private List l;
    private String m;

    public ag()
    {
    }

    static long a(ag ag1, long l1)
    {
        ag1.f = l1;
        return l1;
    }

    static i a()
    {
        return i;
    }

    static List a(ag ag1)
    {
        return ag1.l;
    }

    static void a(ag ag1, String s)
    {
        ArrayList arraylist = new ArrayList();
        CSVReader csvreader;
        String s2;
        String s3;
        csvreader = new CSVReader(new FileReader(s));
        csvreader.readNext();
        s2 = ag1.getString(0x7f080039);
        s3 = ag1.getString(0x7f08003a);
_L1:
        String as[] = csvreader.readNext();
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_381;
        }
        FileNotFoundException filenotfoundexception;
        ax ax3;
        String s1;
        Object aobj[];
label0:
        {
            if (as.length != 7 && as.length != 9)
            {
                break label0;
            }
            Item item = new Item();
            item.setCategoryId(ag1.f);
            item.setName(as[0]);
            item.setPrice(Double.parseDouble(as[1]));
            item.setPrinterId(Integer.parseInt(as[2]));
            item.setTax1Id(Integer.parseInt(as[3]));
            item.setQty(Integer.parseInt(as[4]));
            item.setWarn(Boolean.parseBoolean(as[5]));
            item.setWarnQty(Integer.parseInt(as[6]));
            if (as.length == 9)
            {
                item.setBackground(as[7]);
                item.setFontColor(as[8]);
            }
            if (TextUtils.isEmpty(item.getBackground()))
            {
                item.setBackground(s2);
            }
            if (TextUtils.isEmpty(item.getFontColor()))
            {
                item.setFontColor(s3);
            }
            arraylist.add(item);
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
            ax3 = new ax(ag1.b);
            s1 = ag1.getString(0x7f09021a);
            aobj = new Object[2];
            aobj[0] = "item.csv";
            aobj[1] = d.d;
            ax3.a(String.format(s1, aobj));
            ax3.show();
            filenotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ax ax2 = new ax(ag1.b);
            ax2.a(String.format(ag1.getString(0x7f09021b), new Object[] {
                "item.csv"
            }));
            ax2.show();
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            ax ax1 = new ax(ag1.b);
            ax1.a(0x7f09021c);
            ax1.show();
            numberformatexception.printStackTrace();
            BugSenseHandler.sendException(numberformatexception);
            return;
        }
        csvreader.close();
        i.a(arraylist);
        ag1.a.notifyDataSetChanged();
        ag1.b.c();
        return;
    }

    static long b(ag ag1)
    {
        return ag1.f;
    }

    private void b()
    {
        List list = i.c(f);
        if (list.size() > 0)
        {
            if (Environment.getExternalStorageDirectory().canWrite())
            {
                String as[] = {
                    getString(0x7f090225), getString(0x7f090226), getString(0x7f090227), getString(0x7f090228), getString(0x7f090237), getString(0x7f090238), getString(0x7f090239), getString(0x7f09023b), getString(0x7f09023c)
                };
                ArrayList arraylist = new ArrayList();
                String as1[];
                for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(as1))
                {
                    Item item = (Item)iterator.next();
                    as1 = new String[9];
                    as1[0] = item.getName();
                    as1[1] = (new StringBuilder()).append(item.getPrice()).toString();
                    as1[2] = (new StringBuilder()).append(item.getPrinterId()).toString();
                    as1[3] = (new StringBuilder()).append(item.getTax1Id()).toString();
                    as1[4] = (new StringBuilder()).append(item.getQty()).toString();
                    as1[5] = (new StringBuilder()).append(item.isWarn()).toString();
                    as1[6] = (new StringBuilder()).append(item.getWarnQty()).toString();
                    as1[7] = (new StringBuilder()).append(item.getBackground()).toString();
                    as1[8] = (new StringBuilder()).append(item.getFontColor()).toString();
                }

                m = (new StringBuilder()).append(d.d).append("/item_").append(com.aadhk.restpos.f.i.a()).append(".csv").toString();
                (new File(d.d)).mkdirs();
                try
                {
                    com.aadhk.product.library.c.d.a(m, as, arraylist);
                    ax ax1 = new ax(b);
                    ax1.a((new StringBuilder()).append(b.getString(0x7f090221)).append(" ").append(m).toString());
                    ax1.show();
                    return;
                }
                catch (android.content.res.Resources.NotFoundException notfoundexception)
                {
                    Toast.makeText(b, (new StringBuilder()).append(b.getString(0x7f090223)).append(" ").append(m).toString(), 1).show();
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
                ax ax2 = new ax(b);
                ax2.setTitle(getString(0x7f090224));
                ax2.show();
                return;
            }
        } else
        {
            Toast.makeText(b, 0x7f090054, 1).show();
            return;
        }
    }

    static ao c(ag ag1)
    {
        return ag1.a;
    }

    static MgrItemActivity d(ag ag1)
    {
        return ag1.b;
    }

    static List e(ag ag1)
    {
        return ag1.e;
    }

    public final void a(List list)
    {
        l = list;
        g g1 = new g(b);
        g1.setTitle(0x7f09029d);
        g1.a(new ah(this));
        g1.show();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = b.a();
        i = new i(sqlitedatabase);
        e = (new b(sqlitedatabase)).b();
        i = new i(sqlitedatabase);
        h = new n(sqlitedatabase);
        k = ((POSApp)b.getApplicationContext()).b();
        j = (new r(sqlitedatabase)).b();
        if (e.isEmpty())
        {
            ax ax1 = new ax(b);
            ax1.a(getString(0x7f090236));
            ax1.a(new am(this));
            ax1.show();
            ax1.show();
        } else
        {
            f = ((Category)e.get(0)).getId();
            b.a(f);
        }
        a = new ao(this, getChildFragmentManager());
        d = (ViewPager)g.findViewById(0x7f0b0141);
        d.setAdapter(a);
        c = (TabPageIndicator)g.findViewById(0x7f0b0140);
        c.a(d);
        c.a(new an(this));
        d.setCurrentItem(b.f());
    }

    public final void onAttach(Activity activity)
    {
        b = (MgrItemActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b.setTitle(0x7f090264);
        setHasOptionsMenu(true);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f0009, menu);
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f0300a8, viewgroup, false);
        return g;
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            b.c(null);
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0291)
        {
            String as2[] = com.aadhk.product.library.c.f.a(new File(d.d), "item[\\w\\W]*.csv");
            if (as2 != null && as2.length > 0)
            {
                k k2 = new k(b, as2, -1 + as2.length);
                k2.setTitle(0x7f090234);
                k2.a(new ai(this, as2));
                k2.show();
            } else
            {
                Toast.makeText(b, 0x7f090235, 1).show();
            }
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0292)
        {
            b();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0290)
        {
            String s = (new StringBuilder(" b.categoryId=")).append(f).toString();
            if (h.a(s))
            {
                ax ax1 = new ax(b);
                ax1.a(0x7f0900be);
                ax1.show();
            } else
            {
                g g1 = new g(b);
                g1.setTitle(0x7f0900b8);
                g1.a(new al(this));
                g1.show();
            }
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0293)
        {
            ArrayList arraylist = new ArrayList(j.values());
            ArrayList arraylist1 = new ArrayList(j.keySet());
            arraylist.add(0, getString(0x7f090230));
            String as[] = (String[])arraylist.toArray(new String[arraylist.size()]);
            k k1 = new k(b, as, 0);
            k1.setTitle(0x7f09022d);
            k1.a(new ak(this, arraylist1));
            k1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0294)
        {
            ArrayList arraylist2 = new ArrayList();
            if (!TextUtils.isEmpty(k.getTax1Name()))
            {
                arraylist2.add(k.getTax1Name());
            }
            if (!TextUtils.isEmpty(k.getTax2Name()))
            {
                arraylist2.add(k.getTax2Name());
            }
            String as1[] = (String[])arraylist2.toArray(new String[arraylist2.size()]);
            boolean aflag[] = {
                0, 0
            };
            h h1 = new h(b, as1, aflag);
            h1.setTitle(0x7f09022f);
            h1.a(new aj(this));
            h1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0295)
        {
            b.e();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
