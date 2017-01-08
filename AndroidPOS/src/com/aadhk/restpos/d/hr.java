// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
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
import com.aadhk.product.library.c.c;
import com.aadhk.product.library.c.d;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.a.bf;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.p;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            hs, ht

public final class hr extends Fragment
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
    private Company j;
    private List k;
    private POSPrinterSetting l;
    private g m;
    private String n;
    private String o;
    private String p;
    private String q;

    public hr()
    {
    }

    static POSPrinterSetting a(hr hr1)
    {
        return hr1.l;
    }

    private boolean a()
    {
        ArrayList arraylist;
        File file;
        q = (new StringBuilder("Report_")).append(com.aadhk.product.library.c.c.a(a, "yyyy_MM_dd")).toString();
        p = (new StringBuilder()).append(f.c).append("/").append(q).append(".csv").toString();
        if (k.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_1002;
        }
        arraylist = new ArrayList();
        String as[] = new String[1];
        as[0] = getString(0x7f0801d0);
        arraylist.add(as);
        String as1[] = new String[1];
        as1[0] = (new StringBuilder()).append(getString(0x7f0801f6)).append(a).toString();
        arraylist.add(as1);
        String as2[] = new String[1];
        as2[0] = (new StringBuilder()).append(getString(0x7f0801f7)).append(b).toString();
        arraylist.add(as2);
        arraylist.add(new String[] {
            "", "", ""
        });
        Iterator iterator = k.iterator();
        while (iterator.hasNext()) 
        {
            Report report = (Report)iterator.next();
            String as3[] = new String[1];
            as3[0] = report.getName();
            arraylist.add(as3);
            if (report.getReportItems().isEmpty())
            {
                String as10[] = new String[1];
                as10[0] = getString(0x7f080084);
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
                            String s3 = com.aadhk.restpos.util.p.a(c.t(), reportitem.getAmount(), c.s());
                            String as8[] = new String[3];
                            as8[0] = reportitem.getName();
                            as8[1] = "";
                            as8[2] = s3;
                            arraylist.add(as8);
                        }
                    } else
                    if (report.getId() == 12)
                    {
                        String s2 = com.aadhk.restpos.util.p.a(c.t(), reportitem.getAmount(), c.s());
                        String as7[] = new String[3];
                        as7[0] = reportitem.getName();
                        as7[1] = s2;
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
                        String s1 = com.aadhk.restpos.util.p.a(c.t(), reportitem.getAmount(), c.s());
                        String as5[] = new String[3];
                        as5[0] = reportitem.getName();
                        as5[1] = "";
                        as5[2] = s1;
                        arraylist.add(as5);
                    } else
                    {
                        String s = com.aadhk.restpos.util.p.a(c.t(), reportitem.getAmount(), c.s());
                        String as4[] = new String[3];
                        as4[0] = reportitem.getName();
                        as4[1] = (new StringBuilder()).append(reportitem.getCount()).toString();
                        as4[2] = s;
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
            break MISSING_BLOCK_LABEL_887;
        }
        (new File(f.c)).mkdirs();
        com.aadhk.product.library.c.d.a(p, null, arraylist);
        return true;
        try
        {
            bo bo1 = new bo(c);
            bo1.a(getString(0x7f080273));
            bo1.show();
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(c, (new StringBuilder()).append(getString(0x7f080272)).append(" ").append(p).toString(), 1).show();
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
        bo bo2 = new bo(c);
        bo2.a(getString(0x7f080271));
        bo2.show();
        return false;
    }

    static List b(hr hr1)
    {
        return hr1.k;
    }

    static String c(hr hr1)
    {
        return hr1.a;
    }

    static String d(hr hr1)
    {
        return hr1.b;
    }

    static String e(hr hr1)
    {
        return hr1.n;
    }

    static String f(hr hr1)
    {
        return hr1.o;
    }

    static g g(hr hr1)
    {
        return hr1.m;
    }

    static ReportListActivity h(hr hr1)
    {
        return hr1.c;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l = ((POSApp)c.getApplicationContext()).k();
        m = new g(c);
        j = c.v();
        o = c.u().getAccount();
        k = c.b();
        e.setGroupIndicator(null);
        e.setAdapter(new bf(c, k));
        e.setOnGroupClickListener(new hs(this));
        for (int i1 = 0; i1 < k.size(); i1++)
        {
            e.expandGroup(i1);
        }

        h.setText(n);
        f.setText(a);
        g.setText(b);
        i.setText(o);
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
        n = com.aadhk.product.library.c.c.b();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        menuinflater.inflate(0x7f0f0012, menu);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        d = layoutinflater.inflate(0x7f03009d, viewgroup, false);
        e = (ExpandableListView)d.findViewById(0x7f090268);
        f = (TextView)d.findViewById(0x7f090266);
        g = (TextView)d.findViewById(0x7f090267);
        h = (TextView)d.findViewById(0x7f090269);
        i = (TextView)d.findViewById(0x7f09026a);
        return d;
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() != 0x7f09031a) goto _L2; else goto _L1
_L1:
        (new com.aadhk.product.library.a.d(new ht(this), c, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
_L4:
        return super.onOptionsItemSelected(menuitem);
_L2:
        if (menuitem.getItemId() == 0x7f0901a0)
        {
            (new File(f.c)).mkdirs();
            String s2 = (new StringBuilder()).append(getString(0x7f0801d0)).append("_").append(b).toString();
            m.a(j.getEmail(), l, k, s2, a, b, n, o);
        } else
        if (menuitem.getItemId() == 0x7f090014)
        {
            c.finish();
        } else
        if (menuitem.getItemId() == 0x7f09031b && a())
        {
            ReportListActivity reportlistactivity = c;
            String s = p;
            String as[] = new String[1];
            as[0] = j.getEmail();
            String s1 = (new StringBuilder()).append(j.getName()).append(" - ").append(q).toString();
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/csv");
            intent.putExtra("android.intent.extra.EMAIL", as);
            intent.putExtra("android.intent.extra.SUBJECT", s1);
            intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder("file://")).append(s).toString()));
            reportlistactivity.startActivity(Intent.createChooser(intent, reportlistactivity.getString(0x7f08024c)));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
