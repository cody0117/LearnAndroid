// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.i;
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
//            et, eb

public final class ea extends et
{

    private List s;
    private n t;
    private String u;
    private double v;
    private int w;
    private int x;

    public ea()
    {
    }

    static n a(ea ea1)
    {
        return ea1.t;
    }

    private boolean b()
    {
        String as[];
        ArrayList arraylist;
        File file;
        String s1 = (new StringBuilder()).append(f.b(n)).append("_").append(a).toString();
        u = (new StringBuilder()).append(d.b).append("/").append(s1).append(".csv").toString();
        if (s.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_401;
        }
        as = new String[3];
        as[0] = p.getString(0x7f0901a5);
        as[1] = p.getString(0x7f0901a4);
        as[2] = p.getString(0x7f0901a6);
        arraylist = new ArrayList();
        String as1[];
        for (Iterator iterator = s.iterator(); iterator.hasNext(); arraylist.add(as1))
        {
            ReportItem reportitem = (ReportItem)iterator.next();
            as1 = new String[3];
            as1[0] = reportitem.getName();
            as1[1] = (new StringBuilder()).append(reportitem.getAmount()).toString();
            as1[2] = (new StringBuilder()).append(h.b(reportitem.getAmount(), v)).toString();
        }

        file = Environment.getExternalStorageDirectory();
        if (!file.canWrite())
        {
            break MISSING_BLOCK_LABEL_280;
        }
        (new File(d.d)).mkdirs();
        com.aadhk.product.library.c.d.a(u, as, arraylist);
        return true;
        try
        {
            ax ax2 = new ax(f);
            ax2.a(p.getString(0x7f090224));
            ax2.show();
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(f, (new StringBuilder()).append(p.getString(0x7f090223)).append(" ").append(u).toString(), 1).show();
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
        ax ax1 = new ax(f);
        ax1.a(p.getString(0x7f090222));
        ax1.show();
        return false;
    }

    private void c()
    {
        do
        {
            Iterator iterator = s.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ReportItem reportitem = (ReportItem)iterator.next();
                x = -1 + x;
                reportitem.setPercentage(1 + reportitem.getPercentage());
            } while (x != 0);
        } while (x > 0);
    }

    protected final void a()
    {
        if (b())
        {
            com.aadhk.restpos.ReportActivity reportactivity = f;
            String s1 = u;
            String as[] = new String[1];
            as[0] = q.getEmail();
            k.a(reportactivity, s1, as, (new StringBuilder()).append(q.getName()).append(" - ").append(n).toString());
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        t = new n(r);
        if (i.b(c, d))
        {
            b = i.a(b);
        }
        s = t.a((new StringBuilder()).append(a).append(" ").append(c).toString(), (new StringBuilder()).append(b).append(" ").append(d).toString(), "amt desc");
        v = 0.0D;
        if (!s.isEmpty())
        {
            for (Iterator iterator = s.iterator(); iterator.hasNext();)
            {
                ReportItem reportitem1 = (ReportItem)iterator.next();
                v = v + reportitem1.getAmount();
            }

            for (Iterator iterator1 = s.iterator(); iterator1.hasNext();)
            {
                ReportItem reportitem = (ReportItem)iterator1.next();
                int l = (int)((100D * reportitem.getAmount()) / v);
                reportitem.setPercentage(l);
                w = l + w;
            }

            x = 100 - w;
            if (x > 0)
            {
                c();
            }
        }
        if (s.size() > 0)
        {
            i.setVisibility(8);
        } else
        {
            i.setVisibility(0);
        }
        h.setAdapter(new eb(this, f, s, a, b, c, d));
        if (o != 4) goto _L2; else goto _L1
_L1:
        e = i.d(a, m);
_L4:
        j.setText((new StringBuilder()).append(e).append("\n").append(p.getString(0x7f0901b1)).append(" ").append(j.a(this.l, v, k)).toString());
        return;
_L2:
        if (o == 3 || o == 5)
        {
            e = (new StringBuilder()).append(i.d(a, m)).append(" / ").append(i.d(b, m)).toString();
        } else
        if (o == 2)
        {
            e = i.d(a);
        } else
        if (o == 1)
        {
            e = i.e(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final volatile void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final volatile View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return super.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public final volatile boolean onOptionsItemSelected(MenuItem menuitem)
    {
        return super.onOptionsItemSelected(menuitem);
    }
}
