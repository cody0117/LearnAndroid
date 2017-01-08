// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.PopupMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;
import com.aadhk.b.b;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.e;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.TableGroup;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.bl;
import com.aadhk.restpos.d.ke;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.ac;
import com.aadhk.restpos.g.m;
import com.aadhk.restpos.util.a;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, do, dl, DeliveryActivity, 
//            OrderListActivity, ReservationActivity, POSApp, dq, 
//            dp, dm, PayInOutActivity, PurchaseActivity, 
//            ReceiptListActivity, ReportListActivity, dn, SettingActivity, 
//            DatabaseActivity, ServerActivity

public class TableListActivity extends POSActivity
    implements android.support.v7.widget.PopupMenu.OnMenuItemClickListener, android.view.View.OnClickListener, android.widget.AdapterView.OnItemSelectedListener
{

    private POSPrinterSetting A;
    private g B;
    private Spinner C;
    private boolean D;
    private ke E;
    private List F;
    private int G;
    private Button H;
    private Button I;
    private Button J;
    private Button K;
    private Button L;
    private Button M;
    c a;
    private r o;
    private DropboxAPI p;
    private e q;
    private String r;
    private String s;
    private String t;
    private ac u;
    private m v;
    private RolePermission w;
    private RolePermission x;
    private RolePermission y;
    private String z;

    public TableListActivity()
    {
        a = new do(this);
    }

    static int a(TableListActivity tablelistactivity, int i)
    {
        tablelistactivity.G = i;
        return i;
    }

    static m a(TableListActivity tablelistactivity)
    {
        return tablelistactivity.v;
    }

    static List a(TableListActivity tablelistactivity, List list)
    {
        tablelistactivity.F = list;
        return list;
    }

    static List b(TableListActivity tablelistactivity)
    {
        return tablelistactivity.F;
    }

    static Spinner c(TableListActivity tablelistactivity)
    {
        return tablelistactivity.C;
    }

    private void c()
    {
        if (A.isEnable())
        {
            if (!x.isManagerPermission())
            {
                (new d(a, this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                bl bl1 = new bl(this);
                bl1.a(new dl(this));
                bl1.show();
                return;
            }
        } else
        {
            Toast.makeText(this, 0x7f080242, 1).show();
            return;
        }
    }

    static int d(TableListActivity tablelistactivity)
    {
        return tablelistactivity.G;
    }

    private void d()
    {
        if (o.a() && (new File(r)).exists() && Environment.getExternalStorageDirectory().canWrite())
        {
            try
            {
                com.aadhk.product.library.c.f.a(r, s);
            }
            catch (IOException ioexception)
            {
                BugSenseHandler.sendException(ioexception);
                ioexception.printStackTrace();
            }
        }
        if (o.b())
        {
            (new File(r)).exists();
        }
        finish();
    }

    static ac e(TableListActivity tablelistactivity)
    {
        return tablelistactivity.u;
    }

    static ke f(TableListActivity tablelistactivity)
    {
        return tablelistactivity.E;
    }

    static POSPrinterSetting g(TableListActivity tablelistactivity)
    {
        return tablelistactivity.A;
    }

    static g h(TableListActivity tablelistactivity)
    {
        return tablelistactivity.B;
    }

    public final String a()
    {
        return z;
    }

    public final ac b()
    {
        return u;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Intent intent1 = getIntent();
        intent1.addFlags(0x10000);
        finish();
        startActivity(intent1);
    }

    public void onBackPressed()
    {
        d();
    }

    public void onClick(View view)
    {
        if (view == H)
        {
            Intent intent = new Intent(this, com/aadhk/restpos/DeliveryActivity);
            intent.putExtra("userAccount", z);
            startActivity(intent);
        } else
        {
            if (view == I)
            {
                Order order = new Order();
                order.setTableId(0L);
                order.setOrderTime(com.aadhk.restpos.util.o.c());
                order.setPersonNum(1);
                order.setTableName(getString(0x7f080367));
                order.setWaiterName(d.getAccount());
                com.aadhk.restpos.util.q.a(this, order, null, false);
                return;
            }
            if (view == J)
            {
                Intent intent1 = new Intent();
                intent1.setClass(this, com/aadhk/restpos/OrderListActivity);
                startActivity(intent1);
                return;
            }
            if (view == L)
            {
                c();
                return;
            }
            if (view == K)
            {
                Intent intent2 = new Intent();
                intent2.setClass(this, com/aadhk/restpos/ReservationActivity);
                startActivity(intent2);
                return;
            }
            if (view == M)
            {
                PopupMenu popupmenu = new PopupMenu(this, M);
                popupmenu.setOnMenuItemClickListener(this);
                popupmenu.getMenuInflater().inflate(0x7f0f0017, popupmenu.getMenu());
                Menu menu = popupmenu.getMenu();
                menu.removeItem(0x7f090325);
                if (com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
                {
                    menu.removeItem(0x7f090326);
                }
                if (d.getRole() > 1)
                {
                    menu.removeItem(0x7f090312);
                    menu.removeItem(0x7f090324);
                    menu.removeItem(0x7f090326);
                }
                Map map = ((POSApp)getApplicationContext()).e();
                w = (RolePermission)map.get(Integer.valueOf(300));
                x = (RolePermission)map.get(Integer.valueOf(103));
                y = (RolePermission)map.get(Integer.valueOf(104));
                if (!w.isShow())
                {
                    menu.removeItem(0x7f090323);
                }
                popupmenu.show();
                return;
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getSupportActionBar().hide();
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        q = new e(this, "a8lxybk98ib2i9x", "7kxlca8anbcr9uq");
        p = q.a();
        s = (new StringBuilder()).append(com.aadhk.restpos.util.f.e).append("/").append(com.aadhk.product.library.c.f.a()).append("_restpos.db").toString();
        r = getDatabasePath("restpos.db").getAbsolutePath();
        t = "restpos.db";
        o = new r(this);
        u = new ac(this);
        v = new m(this);
        z = d.getAccount();
        A = ((POSApp)getApplicationContext()).k();
        B = new g(this);
        (new a(this)).a();
        setContentView(0x7f030028);
        View view = findViewById(0x7f090060);
        boolean flag;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        D = flag;
        fragmenttransaction = getSupportFragmentManager().beginTransaction();
        E = new ke();
        fragmenttransaction.replace(0x7f09005f, E);
        fragmenttransaction.commit();
        H = (Button)findViewById(0x7f09007e);
        I = (Button)findViewById(0x7f09007f);
        J = (Button)findViewById(0x7f090080);
        K = (Button)findViewById(0x7f090081);
        L = (Button)findViewById(0x7f090082);
        M = (Button)findViewById(0x7f090083);
        C = (Spinner)findViewById(0x7f09007d);
        C.setOnItemSelectedListener(this);
        H.setOnClickListener(this);
        I.setOnClickListener(this);
        J.setOnClickListener(this);
        K.setOnClickListener(this);
        L.setOnClickListener(this);
        M.setOnClickListener(this);
        K.setVisibility(8);
        if (!D)
        {
            L.setVisibility(8);
        }
        x = (RolePermission)((POSApp)getApplicationContext()).e().get(Integer.valueOf(103));
        if (!x.isShow())
        {
            L.setVisibility(8);
        }
        (new d(new dq(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    protected void onDestroy()
    {
        ac _tmp = u;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        G = ((TableGroup)F.get(i)).getTableGroupId();
        (new d(new dp(this, G), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onMenuItemClick(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090082)
        {
            c();
        } else
        {
            if (menuitem.getItemId() == 0x7f090321)
            {
                if (com.aadhk.b.b.a(this, "com.aadhk.restpos.report.sales") || com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
                {
                    if (x.isManagerPermission())
                    {
                        bl bl2 = new bl(this);
                        bl2.a(new dm(this));
                        bl2.show();
                        return true;
                    } else
                    {
                        startActivity(new Intent(this, com/aadhk/restpos/PayInOutActivity));
                        return true;
                    }
                } else
                {
                    startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
                    return true;
                }
            }
            if (menuitem.getItemId() == 0x7f090322)
            {
                if (com.aadhk.b.b.a(this, "com.aadhk.restpos.report.sales") || com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
                {
                    startActivity(new Intent(this, com/aadhk/restpos/ReceiptListActivity));
                    return true;
                } else
                {
                    startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
                    return true;
                }
            }
            if (menuitem.getItemId() == 0x7f090323)
            {
                if (!w.isManagerPermission())
                {
                    Intent intent3 = new Intent();
                    intent3.setClass(this, com/aadhk/restpos/ReportListActivity);
                    startActivity(intent3);
                    return true;
                } else
                {
                    bl bl1 = new bl(this);
                    bl1.a(new dn(this));
                    bl1.show();
                    return true;
                }
            }
            if (menuitem.getItemId() == 0x7f090312)
            {
                Intent intent = new Intent();
                intent.setClass(this, com/aadhk/restpos/SettingActivity);
                startActivityForResult(intent, 0);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090324)
            {
                Intent intent1 = new Intent();
                intent1.setClass(this, com/aadhk/restpos/DatabaseActivity);
                startActivity(intent1);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090325)
            {
                Intent intent2 = new Intent();
                intent2.setClass(this, com/aadhk/restpos/ServerActivity);
                startActivity(intent2);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090326)
            {
                startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
                return true;
            }
            if (menuitem.getItemId() == 0x7f090327)
            {
                d();
                return true;
            }
        }
        return false;
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }
}
