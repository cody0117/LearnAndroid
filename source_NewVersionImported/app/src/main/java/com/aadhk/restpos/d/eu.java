// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.view.MenuItemCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.b;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.b.s;
import com.aadhk.restpos.b.x;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.i;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            et, ew, ex, ev

public final class eu extends et
{

    private f A;
    private int B;
    private int C;
    b s;
    private Report t;
    private POSPrinterSetting u;
    private s v;
    private x w;
    private List x;
    private String y[];
    private String z;

    public eu()
    {
        B = 1;
        C = 2;
        s = new ew(this);
    }

    static String a(eu eu1, String s1)
    {
        eu1.z = s1;
        return s1;
    }

    static List a(eu eu1)
    {
        return eu1.x;
    }

    static String[] b(eu eu1)
    {
        return eu1.y;
    }

    static Report c(eu eu1)
    {
        return eu1.t;
    }

    static POSPrinterSetting d(eu eu1)
    {
        return eu1.u;
    }

    static String e(eu eu1)
    {
        return eu1.z;
    }

    static f f(eu eu1)
    {
        return eu1.A;
    }

    protected final void a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(t);
        String s1 = (new StringBuilder()).append(n).append("_").append(b).toString();
        A.a(q.getEmail(), u, arraylist, s1, a, b, com.aadhk.product.library.c.c.c(), z);
    }

    protected final void b()
    {
        if (t.getReportItems().size() > 0)
        {
            i.setVisibility(8);
        } else
        {
            i.setVisibility(0);
        }
        h.setAdapter(new ex(this, f));
        if (o == 4)
        {
            e = i.d(a, m);
        } else
        {
            if (o == 3 || o == 5)
            {
                e = (new StringBuilder()).append(i.d(a, m)).append(" / ").append(i.d(b, m)).toString();
                return;
            }
            if (o == 2)
            {
                e = i.d(a);
                return;
            }
            if (o == 1)
            {
                e = i.e(a);
                return;
            }
        }
    }

    protected final void c()
    {
        if (i.b(c, d))
        {
            b = i.a(b);
        }
        if (z.equals(getString(0x7f090275)))
        {
            t = v.a(f, (new StringBuilder()).append(a).append(" ").append(c).toString(), (new StringBuilder()).append(b).append(" ").append(d).toString(), null);
            return;
        } else
        {
            t = v.a(f, (new StringBuilder()).append(a).append(" ").append(c).toString(), (new StringBuilder()).append(b).append(" ").append(d).toString(), z);
            return;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        v = new s(r);
        w = new x(r);
        x = w.a();
        u = (new r(r)).b(1);
        List list = x;
        String as[] = new String[1 + list.size()];
        as[0] = getString(0x7f090275);
        for (int j = 0; j < list.size(); j++)
        {
            as[j + 1] = ((User)list.get(j)).getAccount();
        }

        y = as;
        c();
        b();
    }

    public final volatile void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        A = new f(f);
        z = getString(0x7f090275);
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        MenuItem menuitem = menu.add(0, C, 0, 0x7f0901b9);
        menuitem.setIcon(0x7f0200d5);
        MenuItemCompat.setShowAsAction(menuitem, 2);
        MenuItem menuitem1 = menu.add(0, B, 0, 0x7f0901b8);
        menuitem1.setIcon(0x7f0200cf);
        MenuItemCompat.setShowAsAction(menuitem1, 2);
    }

    public final volatile View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return super.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == B)
        {
            a a1 = new a(f, s, p.getString(0x7f090177));
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return true;
            } else
            {
                a1.execute(null);
                return true;
            }
        }
        if (menuitem.getItemId() == C)
        {
            com.aadhk.product.library.b.a a2 = new com.aadhk.product.library.b.a(f, y);
            a2.a();
            a2.a(new ev(this));
            a2.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
