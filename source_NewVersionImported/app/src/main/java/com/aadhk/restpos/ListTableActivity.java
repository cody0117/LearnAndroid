// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.aadhk.b.b;
import com.aadhk.product.library.c.e;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.au;
import com.aadhk.restpos.d.fs;
import com.aadhk.restpos.f.a;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.k;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import com.dropbox.client2.DropboxAPI;
import com.google.analytics.tracking.android.EasyTracker;
import java.io.File;
import java.io.IOException;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, ag, POSApp, DeliveryActivity, 
//            PurchaseActivity, ad, PayInOutActivity, ae, 
//            ReportListActivity, af, ReceiptListActivity, DatabaseActivity, 
//            ListOrdersActivity, SettingActivity

public class ListTableActivity extends POSActivity
{

    com.aadhk.product.library.a.b a;
    private l l;
    private DropboxAPI m;
    private e n;
    private String o;
    private String p;
    private String q;
    private SQLiteDatabase r;
    private RolePermission s;
    private RolePermission t;
    private RolePermission u;
    private String v;
    private POSPrinterSetting w;
    private com.aadhk.restpos.e.f x;

    public ListTableActivity()
    {
        a = new ag(this);
    }

    static POSPrinterSetting a(ListTableActivity listtableactivity)
    {
        return listtableactivity.w;
    }

    static com.aadhk.restpos.e.f b(ListTableActivity listtableactivity)
    {
        return listtableactivity.x;
    }

    private void c()
    {
        if (l.a() && (new File(o)).exists() && Environment.getExternalStorageDirectory().canWrite())
        {
            try
            {
                f.a(o, p);
            }
            catch (IOException ioexception)
            {
                BugSenseHandler.sendException(ioexception);
                ioexception.printStackTrace();
            }
        }
        if (l.b())
        {
            (new File(o)).exists();
        }
        finish();
    }

    public final String a()
    {
        return v;
    }

    public final SQLiteDatabase b()
    {
        return r;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        Intent intent1 = getIntent();
        intent1.addFlags(0x10000);
        finish();
        startActivity(intent1);
    }

    public void onBackPressed()
    {
        c();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getSupportActionBar().setDisplayHomeAsUpEnabled(false);
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        setTitle(0x7f090011);
        n = new e(this, "a8lxybk98ib2i9x", "7kxlca8anbcr9uq");
        m = n.a();
        p = (new StringBuilder()).append(d.e).append("/").append(f.a()).append("_restpos.db").toString();
        o = getDatabasePath("restpos.db").getAbsolutePath();
        q = "restpos.db";
        l = new l(this);
        r = com.aadhk.restpos.b.f.a().b();
        r r1 = new r(r);
        v = d.getAccount();
        w = r1.b(1);
        x = new com.aadhk.restpos.e.f(this);
        a a1 = new a(this);
        a1.d();
        a1.a();
        FrameLayout framelayout = new FrameLayout(this);
        framelayout.setId(0x9a2112);
        setContentView(framelayout, new android.support.v7.app.ActionBar.LayoutParams(-1, -1));
        if (bundle == null)
        {
            FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(0x9a2112, new fs());
            fragmenttransaction.commit();
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0012, menu);
        if (com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
        {
            menu.removeItem(0x7f0b02a6);
        }
        if (d.getRole() > 1)
        {
            menu.removeItem(0x7f0b02a4);
            menu.removeItem(0x7f0b02a5);
            menu.removeItem(0x7f0b02a6);
        }
        Map map = ((POSApp)getApplicationContext()).d();
        s = (RolePermission)map.get(Integer.valueOf(300));
        t = (RolePermission)map.get(Integer.valueOf(103));
        u = (RolePermission)map.get(Integer.valueOf(104));
        if (!s.isShow())
        {
            menu.removeItem(0x7f0b02a3);
        }
        if (!t.isShow())
        {
            menu.removeItem(0x7f0b02a0);
        }
        if (!u.isShow())
        {
            menu.removeItem(0x7f0b02a1);
        }
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() != 0x7f0b029d) goto _L2; else goto _L1
_L1:
        Intent intent = new Intent(this, com/aadhk/restpos/DeliveryActivity);
        intent.putExtra("userAccount", v);
        startActivity(intent);
_L4:
        return false;
_L2:
        if (menuitem.getItemId() == 0x7f0b02a1)
        {
            if (!com.aadhk.b.b.a(this, "com.aadhk.restpos.feature.payinout") && !com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
            {
                startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
            } else
            if (t.isManagerPermission())
            {
                au au3 = new au(this);
                au3.a(new ad(this));
                au3.show();
            } else
            {
                startActivity(new Intent(this, com/aadhk/restpos/PayInOutActivity));
            }
        } else
        if (menuitem.getItemId() == 0x7f0b02a0)
        {
            if (w != null)
            {
                if (!t.isManagerPermission())
                {
                    com.aadhk.product.library.a.a a1 = new com.aadhk.product.library.a.a(this, a, getString(0x7f090178));
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                    } else
                    {
                        a1.execute(null);
                    }
                } else
                {
                    au au2 = new au(this);
                    au2.a(new ae(this));
                    au2.show();
                }
            } else
            {
                Toast.makeText(this, 0x7f090204, 1).show();
            }
        } else
        {
            if (menuitem.getItemId() == 0x7f0b02a3)
            {
                if (!s.isManagerPermission())
                {
                    Intent intent4 = new Intent();
                    intent4.setClass(this, com/aadhk/restpos/ReportListActivity);
                    startActivity(intent4);
                    return true;
                } else
                {
                    au au1 = new au(this);
                    au1.a(new af(this));
                    au1.show();
                    return true;
                }
            }
            if (menuitem.getItemId() == 0x7f0b02a2)
            {
                if (!com.aadhk.b.b.a(this, "com.aadhk.restpos.report.sales") && !com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
                {
                    startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
                } else
                {
                    startActivity(new Intent(this, com/aadhk/restpos/ReceiptListActivity));
                }
            } else
            {
                if (menuitem.getItemId() == 0x7f0b02a5)
                {
                    Intent intent1 = new Intent();
                    intent1.setClass(this, com/aadhk/restpos/DatabaseActivity);
                    startActivity(intent1);
                    return true;
                }
                if (menuitem.getItemId() == 0x7f0b029f)
                {
                    Intent intent2 = new Intent();
                    intent2.setClass(this, com/aadhk/restpos/ListOrdersActivity);
                    startActivity(intent2);
                    return true;
                }
                if (menuitem.getItemId() == 0x7f0b02a4)
                {
                    Intent intent3 = new Intent();
                    intent3.setClass(this, com/aadhk/restpos/SettingActivity);
                    startActivityForResult(intent3, 0);
                    return true;
                }
                if (menuitem.getItemId() == 0x7f0b02a6)
                {
                    startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
                    return true;
                }
                if (menuitem.getItemId() == 0x7f0b02a7)
                {
                    c();
                    return true;
                }
                if (menuitem.getItemId() == 0x7f0b029e)
                {
                    Order order = new Order();
                    order.setTableId(0L);
                    order.setStartTime(i.c());
                    order.setPersonNum(1);
                    order.setTableName(getResources().getString(0x7f090307));
                    order.setWaiterName(d.getAccount());
                    if (TextUtils.isEmpty(l.r()))
                    {
                        order.setOrderNum(l.q());
                    } else
                    {
                        order.setOrderNum(j.f(l.r()));
                    }
                    k.a(this, order, false);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onStart()
    {
        super.onStart();
        EasyTracker.getInstance().activityStart(this);
    }

    public void onStop()
    {
        super.onStop();
        EasyTracker.getInstance().activityStop(this);
    }
}
