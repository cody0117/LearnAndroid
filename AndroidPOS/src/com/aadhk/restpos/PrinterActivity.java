// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import com.aadhk.a.h;
import com.aadhk.a.j;
import com.aadhk.b.b;
import com.aadhk.product.library.d;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.d.bq;
import com.aadhk.restpos.d.gf;
import com.aadhk.restpos.d.gj;
import com.aadhk.restpos.d.gn;
import com.aadhk.restpos.d.gt;
import com.aadhk.restpos.d.gv;
import com.aadhk.restpos.d.gw;
import com.aadhk.restpos.g.u;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, cr, cs, ct, 
//            cq

public class PrinterActivity extends POSActivity
{

    j a;
    private boolean o;
    private FragmentManager p;
    private gn q;
    private gv r;
    private POSPrinterSetting s;
    private u t;
    private com.aadhk.a.d u;
    private boolean v;
    private String w;
    private int x;
    private h y;

    public PrinterActivity()
    {
        y = new cr(this);
        a = new cs(this);
    }

    static POSPrinterSetting a(PrinterActivity printeractivity, POSPrinterSetting posprintersetting)
    {
        printeractivity.s = posprintersetting;
        return posprintersetting;
    }

    static boolean a(PrinterActivity printeractivity)
    {
        printeractivity.v = true;
        return true;
    }

    static com.aadhk.a.d b(PrinterActivity printeractivity)
    {
        return printeractivity.u;
    }

    static gn c(PrinterActivity printeractivity)
    {
        return printeractivity.q;
    }

    static u d(PrinterActivity printeractivity)
    {
        return printeractivity.t;
    }

    public final void a()
    {
        FragmentTransaction fragmenttransaction;
        if (3 == s.getConnType())
        {
            q = new gf();
        } else
        if (1 == s.getConnType())
        {
            q = new gj();
        } else
        if (2 == s.getConnType())
        {
            if (android.os.Build.VERSION.SDK_INT > 11)
            {
                q = new gw();
            } else
            {
                bo bo1 = new bo(this);
                bo1.a(0x7f0802ab);
                bo1.show();
            }
        } else
        {
            q = new gt();
        }
        fragmenttransaction = p.beginTransaction();
        fragmenttransaction.replace(0x7f09005c, q);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void a(Bitmap bitmap)
    {
        FragmentTransaction fragmenttransaction = p.beginTransaction();
        r = new gv();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleBitmap", bitmap);
        r.setArguments(bundle);
        if (o)
        {
            fragmenttransaction.replace(0x7f09005e, r);
        } else
        {
            fragmenttransaction.replace(0x7f09005c, r);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = p.beginTransaction();
        bq bq1 = new bq();
        if (o)
        {
            fragmenttransaction.replace(0x7f09005e, bq1);
        } else
        {
            fragmenttransaction.replace(0x7f09005c, bq1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void c()
    {
        try
        {
            if (!v)
            {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse((new StringBuilder("market://")).append(getResources().getString(d.i)).toString()));
                startActivity(intent);
                return;
            }
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        u.a(this, w, y, "");
        return;
    }

    public final boolean d()
    {
        return o;
    }

    public final u e()
    {
        return t;
    }

    public final POSPrinterSetting f()
    {
        return s;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 9162 || i == 6709)
        {
            Fragment fragment;
            if (o)
            {
                fragment = p.findFragmentById(0x7f09005e);
            } else
            {
                fragment = p.findFragmentById(0x7f09005c);
            }
            fragment.onActivityResult(i, j, intent);
        } else
        if (!u.a(i, j, intent))
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
        setContentView(0x7f030022);
        View view = findViewById(0x7f09005e);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = flag;
        x = getIntent().getExtras().getInt("printerId", 1);
        t = new u(this);
        p = getSupportFragmentManager();
        r = new gv();
        (new com.aadhk.product.library.a.d(new ct(this, x), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        if (x != 2) goto _L2; else goto _L1
_L1:
        w = "com.aadhk.restpos.feature.kitchen";
_L4:
        u = new com.aadhk.a.d(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB");
        if (com.aadhk.b.b.a(this, w) || com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
        {
            break MISSING_BLOCK_LABEL_180;
        }
        u.a(new cq(this));
        return;
_L2:
        if (x == 4)
        {
            w = "com.aadhk.restpos.feature.kitchen2";
        } else
        if (x == 3)
        {
            w = "com.aadhk.restpos.feature.bar";
        } else
        if (x == 1)
        {
            w = "com.aadhk.restpos.feature.receipt";
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
        getMenuInflater().inflate(0x7f0f0010, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        super.onDestroy();
        u _tmp = t;
        com.aadhk.restpos.b.f.a().c();
        if (u != null)
        {
            u.a();
            u = null;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090311)
        {
            File file = new File((new StringBuilder()).append(com.aadhk.restpos.util.f.b).append("/printer_setup_guide.pdf").toString());
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
                Toast.makeText(this, d.g, 1).show();
                return true;
            }
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
