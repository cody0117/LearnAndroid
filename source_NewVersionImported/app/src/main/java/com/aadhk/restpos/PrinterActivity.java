// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import com.aadhk.a.d;
import com.aadhk.a.h;
import com.aadhk.a.j;
import com.aadhk.b.b;
import com.aadhk.product.library.c.l;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.d.de;
import com.aadhk.restpos.d.dh;
import com.aadhk.restpos.d.dn;
import com.aadhk.restpos.d.do;
import com.aadhk.restpos.d.dp;
import com.aadhk.restpos.d.y;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bm, bn, bl

public class PrinterActivity extends POSActivity
{

    j a;
    private boolean l;
    private FragmentManager m;
    private SQLiteDatabase n;
    private dh o;
    private do p;
    private r q;
    private POSPrinterSetting r;
    private d s;
    private boolean t;
    private String u;
    private h v;

    public PrinterActivity()
    {
        v = new bm(this);
        a = new bn(this);
    }

    static boolean a(PrinterActivity printeractivity)
    {
        printeractivity.t = true;
        return true;
    }

    static d b(PrinterActivity printeractivity)
    {
        return printeractivity.s;
    }

    static dh c(PrinterActivity printeractivity)
    {
        return printeractivity.o;
    }

    public final void a()
    {
        if (3 != r.getConnType()) goto _L2; else goto _L1
_L1:
        o = new de();
_L4:
        FragmentTransaction fragmenttransaction = m.beginTransaction();
        fragmenttransaction.replace(0x7f0b0058, o);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
        return;
_L2:
        if (1 != r.getConnType())
        {
            if (2 == r.getConnType())
            {
                if (android.os.Build.VERSION.SDK_INT > 11)
                {
                    o = new dp();
                } else
                {
                    ax ax1 = new ax(this);
                    ax1.a(0x7f09024f);
                    ax1.show();
                }
            } else
            {
                o = new dn();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(Bitmap bitmap)
    {
        FragmentTransaction fragmenttransaction = m.beginTransaction();
        p = new do();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleBitmap", bitmap);
        p.setArguments(bundle);
        if (l)
        {
            fragmenttransaction.replace(0x7f0b005a, p);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, p);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = m.beginTransaction();
        y y1 = new y();
        if (l)
        {
            fragmenttransaction.replace(0x7f0b005a, y1);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, y1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void c()
    {
        try
        {
            if (!t)
            {
                com.aadhk.product.library.c.l.a(this);
                return;
            }
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        s.a(this, u, v, "");
        return;
    }

    public final boolean d()
    {
        return l;
    }

    public final r e()
    {
        return q;
    }

    public final POSPrinterSetting f()
    {
        return r;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 9162 || i == 6709)
        {
            Fragment fragment;
            if (l)
            {
                fragment = m.findFragmentById(0x7f0b005a);
            } else
            {
                fragment = m.findFragmentById(0x7f0b0058);
            }
            fragment.onActivityResult(i, j, intent);
        } else
        if (!s.a(i, j, intent))
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030021);
        n = com.aadhk.restpos.b.f.a().b();
        View view = findViewById(0x7f0b005a);
        boolean flag;
        int i;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = flag;
        i = getIntent().getExtras().getInt("printerId", 1);
        q = new r(n);
        r = q.a(i);
        m = getSupportFragmentManager();
        p = new do();
        if (r.getId() != 2) goto _L2; else goto _L1
_L1:
        u = "com.aadhk.restpos.feature.kitchen";
_L4:
        a();
        s = new d(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB");
        if (com.aadhk.b.b.a(this, u) || com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
        {
            break MISSING_BLOCK_LABEL_179;
        }
        s.a(new bl(this));
        return;
_L2:
        if (r.getId() == 4)
        {
            u = "com.aadhk.restpos.feature.kitchen2";
        } else
        if (r.getId() == 3)
        {
            u = "com.aadhk.restpos.feature.bar";
        } else
        if (r.getId() == 1)
        {
            u = "com.aadhk.restpos.feature.receipt";
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
        return;
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f000d, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (s != null)
        {
            s.a();
            s = null;
        }
        com.aadhk.restpos.b.f.a().c();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b028e)
        {
            File file = new File((new StringBuilder()).append(com.aadhk.restpos.f.d.b).append("/printer_setup_guide.pdf").toString());
            PackageManager packagemanager = getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setType("application/pdf");
            if (packagemanager.queryIntentActivities(intent, 0x10000).size() > 0)
            {
                Intent intent1 = new Intent();
                intent1.setAction("android.intent.action.VIEW");
                Uri uri = Uri.fromFile(file);
                intent1.setFlags(0x40000000);
                intent1.setDataAndType(uri, "application/pdf");
                startActivity(intent1);
                finish();
                return true;
            } else
            {
                Toast.makeText(this, com.aadhk.product.library.d.g, 1).show();
                return true;
            }
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
