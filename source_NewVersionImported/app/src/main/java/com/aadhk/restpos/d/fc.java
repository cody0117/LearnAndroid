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
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.s;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.bn;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.k;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            et, fd

public final class fc extends et
    implements android.widget.AdapterView.OnItemClickListener
{

    private List s;
    private s t;
    private n u;
    private String v;

    public fc()
    {
    }

    static List a(fc fc1)
    {
        return fc1.s;
    }

    private boolean b()
    {
        String as[];
        ArrayList arraylist;
        File file;
        String s1 = (new StringBuilder()).append(f.b(n)).append("_").append(a).toString();
        v = (new StringBuilder()).append(d.b).append("/").append(s1).append(".csv").toString();
        if (s.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_423;
        }
        as = new String[5];
        as[0] = p.getString(0x7f090192);
        as[1] = p.getString(0x7f0901ad);
        as[2] = p.getString(0x7f0901ac);
        as[3] = p.getString(0x7f0901ae);
        as[4] = p.getString(0x7f0901a7);
        arraylist = new ArrayList();
        String as1[];
        for (Iterator iterator = s.iterator(); iterator.hasNext(); arraylist.add(as1))
        {
            Order order = (Order)iterator.next();
            as1 = new String[5];
            as1[0] = (new StringBuilder()).append(order.getId()).toString();
            as1[1] = order.getTableName();
            as1[2] = order.getCancelPerson();
            as1[3] = order.getCancelReason();
            as1[4] = order.getEndTime();
        }

        file = Environment.getExternalStorageDirectory();
        if (!file.canWrite())
        {
            break MISSING_BLOCK_LABEL_302;
        }
        (new File(d.d)).mkdirs();
        com.aadhk.product.library.c.d.a(v, as, arraylist);
        return true;
        try
        {
            ax ax2 = new ax(f);
            ax2.a(p.getString(0x7f090224));
            ax2.show();
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            Toast.makeText(f, (new StringBuilder()).append(p.getString(0x7f090223)).append(" ").append(v).toString(), 1).show();
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

    protected final void a()
    {
        if (b())
        {
            com.aadhk.restpos.ReportActivity reportactivity = f;
            String s1 = v;
            String as[] = new String[1];
            as[0] = q.getEmail();
            k.a(reportactivity, s1, as, (new StringBuilder()).append(q.getName()).append(" - ").append(n).toString());
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        t = new s(r);
        u = new n(r);
        if (i.b(c, d))
        {
            b = i.a(b);
        }
        s = t.a((new StringBuilder()).append(a).append(" ").append(c).toString(), (new StringBuilder()).append(b).append(" ").append(d).toString());
        if (s.size() > 0)
        {
            i.setVisibility(8);
        } else
        {
            i.setVisibility(0);
        }
        h.setAdapter(new fd(this, f));
        h.setOnItemClickListener(this);
        if (o != 4) goto _L2; else goto _L1
_L1:
        e = i.d(a, m);
_L4:
        j.setText((new StringBuilder()).append(e).append("\n").append(p.getString(0x7f0901b2)).append(" ").append(s.size()).toString());
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

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        Order order = (Order)s.get(j);
        List list = u.b(order.getId());
        (new bn(f, order, list, r)).show();
    }

    public final volatile boolean onOptionsItemSelected(MenuItem menuitem)
    {
        return super.onOptionsItemSelected(menuitem);
    }
}