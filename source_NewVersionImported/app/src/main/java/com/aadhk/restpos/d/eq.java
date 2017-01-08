// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.a.ba;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.k;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            er, es

public final class eq extends Fragment
{

    private String a;
    private String b;
    private ReportListActivity c;
    private View d;
    private ExpandableListView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private Resources j;
    private Company k;
    private SQLiteDatabase l;
    private List m;
    private POSPrinterSetting n;
    private f o;
    private String p;
    private String q;
    private String r;
    private String s;

    public eq()
    {
    }

    static ReportListActivity a(eq eq1)
    {
        return eq1.c;
    }

    private boolean a()
    {
        ArrayList arraylist;
        File file;
        s = (new StringBuilder("Report_")).append(com.aadhk.product.library.c.c.a(a, "yyyy_MM_dd")).toString();
        r = (new StringBuilder()).append(d.c).append("/").append(s).append(".csv").toString();
        if (m.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_1020;
        }
        arraylist = new ArrayList();
        String as[] = new String[1];
        as[0] = j.getString(0x7f090195);
        arraylist.add(as);
        String as1[] = new String[1];
        as1[0] = (new StringBuilder()).append(j.getString(0x7f0901bb)).append(a).toString();
        arraylist.add(as1);
        String as2[] = new String[1];
        as2[0] = (new StringBuilder()).append(j.getString(0x7f0901bc)).append(b).toString();
        arraylist.add(as2);
        arraylist.add(new String[] {
            "", "", ""
        });
        Iterator iterator = m.iterator();
        while (iterator.hasNext()) 
        {
            Report report = (Report)iterator.next();
            String as3[] = new String[1];
            as3[0] = report.getName();
            arraylist.add(as3);
            if (report.getReportItems().isEmpty())
            {
                String as10[] = new String[1];
                as10[0] = j.getString(0x7f090054);
                arraylist.add(as10);
            } else
            {
                Iterator iterator1 = report.getReportItems().iterator();
                while (iterator1.hasNext()) 
                {
                    ReportItem reportitem = (ReportItem)iterator1.next();
                    if (report.getId() == 14)
                    {
                        if (reportitem.getId() == 1L)
                        {
                            String as9[] = new String[3];
                            as9[0] = reportitem.getName();
                            as9[1] = "";
                            as9[2] = (new StringBuilder()).append(reportitem.getCount()).toString();
                            arraylist.add(as9);
                        } else
                        {
                            String s4 = com.aadhk.restpos.f.j.a(c.l(), reportitem.getAmount(), c.k());
                            String as8[] = new String[3];
                            as8[0] = reportitem.getName();
                            as8[1] = "";
                            as8[2] = s4;
                            arraylist.add(as8);
                        }
                    } else
                    if (report.getId() == 12)
                    {
                        String s3 = com.aadhk.restpos.f.j.a(c.l(), reportitem.getAmount(), c.k());
                        String as7[] = new String[3];
                        as7[0] = reportitem.getName();
                        as7[1] = s3;
                        as7[2] = (new StringBuilder()).append(reportitem.getPercentage()).append("%").toString();
                        arraylist.add(as7);
                    } else
                    if (report.getId() == 13)
                    {
                        String as6[] = new String[3];
                        as6[0] = reportitem.getName();
                        as6[1] = (new StringBuilder()).append(reportitem.getCount()).toString();
                        as6[2] = (new StringBuilder()).append(reportitem.getPercentage()).append("%").toString();
                        arraylist.add(as6);
                    } else
                    if (reportitem.getCount() == 0)
                    {
                        String s2 = com.aadhk.restpos.f.j.a(c.l(), reportitem.getAmount(), c.k());
                        String as5[] = new String[3];
                        as5[0] = reportitem.getName();
                        as5[1] = "";
                        as5[2] = s2;
                        arraylist.add(as5);
                    } else
                    {
                        String s1 = com.aadhk.restpos.f.j.a(c.l(), reportitem.getAmount(), c.k());
                        String as4[] = new String[3];
                        as4[0] = reportitem.getName();
                        as4[1] = (new StringBuilder()).append(reportitem.getCount()).toString();
                        as4[2] = s1;
                        arraylist.add(as4);
                    }
                }
            }
            arraylist.add(new String[] {
                "", "", ""
            });
        }
        file = Environment.getExternalStorageDirectory();
        if (!file.canWrite())
        {
            break MISSING_BLOCK_LABEL_899;
        }
        (new File(d.c)).mkdirs();
        com.aadhk.product.library.c.d.a(r, null, arraylist);
        return true;
        try
        {
            ax ax1 = new ax(c);
            ax1.a(j.getString(0x7f090224));
            ax1.show();
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(c, (new StringBuilder()).append(j.getString(0x7f090223)).append(" ").append(r).toString(), 1).show();
            notfoundexception.printStackTrace();
            BugSenseHandler.sendException(notfoundexception);
            return false;
        }
        catch (SQLException sqlexception)
        {
            sqlexception.printStackTrace();
            BugSenseHandler.sendException(sqlexception);
            return false;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            BugSenseHandler.sendException(ioexception);
            return false;
        }
        return false;
        ax ax2 = new ax(c);
        ax2.a(j.getString(0x7f090222));
        ax2.show();
        return false;
    }

    static POSPrinterSetting b(eq eq1)
    {
        return eq1.n;
    }

    static List c(eq eq1)
    {
        return eq1.m;
    }

    static String d(eq eq1)
    {
        return eq1.a;
    }

    static String e(eq eq1)
    {
        return eq1.b;
    }

    static String f(eq eq1)
    {
        return eq1.p;
    }

    static String g(eq eq1)
    {
        return eq1.q;
    }

    static f h(eq eq1)
    {
        return eq1.o;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l = c.a();
        n = (new r(l)).b(2);
        o = new f(c);
        k = c.n();
        q = c.m().getAccount();
        m = c.b();
        e.setGroupIndicator(null);
        e.setAdapter(new ba(c, m));
        e.setOnGroupClickListener(new er(this));
        for (int i1 = 0; i1 < m.size(); i1++)
        {
            e.expandGroup(i1);
        }

        h.setText(p);
        f.setText(a);
        g.setText(b);
        i.setText(q);
    }

    public final void onAttach(Activity activity)
    {
        c = (ReportListActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            a = bundle1.getString("fromDate");
            b = bundle1.getString("toDate");
        }
        p = com.aadhk.product.library.c.c.b();
        j = c.getResources();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        menuinflater.inflate(0x7f0f000f, menu);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        d = layoutinflater.inflate(0x7f030085, viewgroup, false);
        e = (ExpandableListView)d.findViewById(0x7f0b0212);
        f = (TextView)d.findViewById(0x7f0b0210);
        g = (TextView)d.findViewById(0x7f0b0211);
        h = (TextView)d.findViewById(0x7f0b0213);
        i = (TextView)d.findViewById(0x7f0b0214);
        return d;
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() != 0x7f0b0298) goto _L2; else goto _L1
_L1:
        a a1 = new a(c, new es(this), j.getString(0x7f090177));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        } else
        {
            a1.execute(null);
        }
_L4:
        return super.onOptionsItemSelected(menuitem);
_L2:
        if (menuitem.getItemId() == 0x7f0b028a)
        {
            (new File(d.c)).mkdirs();
            String s2 = (new StringBuilder()).append(getString(0x7f090195)).append("_").append(b).toString();
            o.a(k.getEmail(), n, m, s2, a, b, p, q);
        } else
        if (menuitem.getItemId() == 0x7f0b0019)
        {
            c.finish();
        } else
        if (menuitem.getItemId() == 0x7f0b0299 && a())
        {
            ReportListActivity reportlistactivity = c;
            String s1 = r;
            String as[] = new String[1];
            as[0] = k.getEmail();
            com.aadhk.restpos.f.k.a(reportlistactivity, s1, as, (new StringBuilder()).append(k.getName()).append(" - ").append(s).toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
