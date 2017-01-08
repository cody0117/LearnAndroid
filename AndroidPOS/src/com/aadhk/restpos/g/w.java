// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.f.bz;
import com.aadhk.restpos.util.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class w
{

    private r a;
    private bz b;
    private u c;

    public w(Context context)
    {
        a = new r(context);
        b = new bz(context);
        c = new u(f.a().b());
    }

    private static void a(int i, List list)
    {
        do
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ReportItem reportitem = (ReportItem)iterator.next();
                i--;
                reportitem.setPercentage(1 + reportitem.getPercentage());
            } while (i != 0);
        } while (i > 0);
    }

    private static void a(List list)
    {
        int i = 0;
        if (!list.isEmpty())
        {
            Iterator iterator = list.iterator();
            int j;
            ReportItem reportitem1;
            for (j = 0; iterator.hasNext(); j = (int)((double)j + reportitem1.getAmount()))
            {
                reportitem1 = (ReportItem)iterator.next();
            }

            for (Iterator iterator1 = list.iterator(); iterator1.hasNext();)
            {
                ReportItem reportitem = (ReportItem)iterator1.next();
                int l = (int)((100D * reportitem.getAmount()) / (double)j);
                reportitem.setPercentage(l);
                i += l;
            }

            int k = 100 - i;
            if (k > 0)
            {
                a(k, list);
            }
        }
    }

    private static void b(List list)
    {
        int i = 0;
        if (!list.isEmpty())
        {
            Iterator iterator = list.iterator();
            int j;
            for (j = 0; iterator.hasNext(); j += ((ReportItem)iterator.next()).getCount()) { }
            for (Iterator iterator1 = list.iterator(); iterator1.hasNext();)
            {
                ReportItem reportitem = (ReportItem)iterator1.next();
                int l = (100 * reportitem.getCount()) / j;
                reportitem.setPercentage(l);
                i += l;
            }

            int k = 100 - i;
            if (k > 0)
            {
                a(k, list);
            }
        }
    }

    public final Map a(Context context, boolean aflag[], String as[], String as1[], String as2[], String s, String s1, 
            String s2)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return b.a(aflag, s1, s2);
        }
        ArrayList arraylist = new ArrayList();
        if (aflag[0])
        {
            arraylist.add(c.a(as[0], as1, s, s1, s2));
        }
        if (aflag[1])
        {
            arraylist.add(c.b(context, as[1], s1, s2));
        }
        if (aflag[2])
        {
            arraylist.add(c.a(as[2], s1, s2));
        }
        if (aflag[3])
        {
            arraylist.add(c.a(as[3], s, s1, s2));
        }
        if (aflag[4])
        {
            arraylist.add(c.a(context, as[4], s1, s2));
        }
        if (aflag[5])
        {
            arraylist.add(c.a(as2, as[5], s1, s2));
        }
        if (aflag[6])
        {
            List list4 = c.b(s1, s2, "amt desc");
            a(list4);
            Report report4 = new Report();
            report4.setId(12);
            report4.setName(as[6]);
            report4.setReportItems(list4);
            arraylist.add(report4);
        }
        if (aflag[7])
        {
            List list3 = c.b(s1, s2, "qty desc");
            b(list3);
            Report report3 = new Report();
            report3.setId(13);
            report3.setName(as[7]);
            report3.setReportItems(list3);
            arraylist.add(report3);
        }
        if (aflag[8])
        {
            List list2 = c.a(s, s1, s2, false);
            Report report2 = new Report();
            report2.setName(as[8]);
            report2.setReportItems(list2);
            arraylist.add(report2);
        }
        if (aflag[9])
        {
            List list1 = c.a(s, s1, s2, true);
            Report report1 = new Report();
            report1.setName(as[9]);
            report1.setReportItems(list1);
            arraylist.add(report1);
        }
        if (aflag[10])
        {
            List list = c.c(s, s1, s2);
            Report report = new Report();
            report.setName(as[10]);
            report.setReportItems(list);
            arraylist.add(report);
        }
        hashmap.put("serviceStatus", "1");
        hashmap.put("serviceData", arraylist);
        return hashmap;
    }
}
