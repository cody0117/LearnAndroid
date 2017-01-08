// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.text.TextUtils;
import com.aadhk.b.a;
import com.aadhk.b.b;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.b.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.c.ab;
import com.aadhk.restpos.c.ad;
import com.aadhk.restpos.c.ai;
import com.aadhk.restpos.c.al;
import com.aadhk.restpos.c.cd;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PrefActivity, POSApp, PrinterActivity, by, 
//            bu, bv, bw, CompanyActivity, 
//            AboutActivity, bx, MgrTableActivity, MgrCategoryActivity, 
//            MgrItemActivity, MgrModifierActivity, CustomerActivity, PaymentMethodActivity, 
//            DiscountActivity, KitchenNoteActivity, MgrVoidReasonActivity, UserActivity, 
//            PriceScheduleActivity, PurchaseActivity, UserPermissionActivity

public class SettingActivity extends PrefActivity
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener
{

    private ListPreference A;
    private Preference B;
    private Preference C;
    private Preference D;
    private c E;
    private r F;
    private i G;
    private Company H;
    private Map I;
    private l J;
    private int K;
    private Preference c;
    private Preference d;
    private Preference e;
    private Preference f;
    private Preference g;
    private Preference h;
    private Preference i;
    private Preference j;
    private Preference k;
    private Preference l;
    private Preference m;
    private Preference n;
    private Preference o;
    private Preference p;
    private Preference q;
    private Preference r;
    private Preference s;
    private Preference t;
    private Preference u;
    private Preference v;
    private Preference w;
    private Preference x;
    private Preference y;
    private ListPreference z;

    public SettingActivity()
    {
    }

    static l a(SettingActivity settingactivity)
    {
        return settingactivity.J;
    }

    private void a()
    {
        BufferedReader bufferedreader;
        StringBuffer stringbuffer;
        bufferedreader = new BufferedReader(new InputStreamReader(getResources().openRawResource(0x7f060004)));
        stringbuffer = new StringBuffer();
_L1:
        String s1;
        try
        {
            s1 = bufferedreader.readLine();
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        stringbuffer.append(s1);
          goto _L1
        al al1 = new al(this);
        al1.setTitle(0x7f09031b);
        al1.a(stringbuffer.toString());
        al1.show();
        return;
    }

    private void b()
    {
        String s1 = getString(0x7f0902ee);
        Object aobj[] = new Object[1];
        aobj[0] = J.q();
        String s2 = String.format(s1, aobj);
        String s4;
        if (TextUtils.isEmpty(J.r()))
        {
            s4 = "";
        } else
        {
            String s3 = getString(0x7f0902ef);
            Object aobj1[] = new Object[1];
            aobj1[0] = J.r();
            s4 = String.format(s3, aobj1);
        }
        i.setSummary((new StringBuilder()).append(s2).append(" ").append(s4).toString());
    }

    static void b(SettingActivity settingactivity)
    {
        settingactivity.b();
    }

    static Preference c(SettingActivity settingactivity)
    {
        return settingactivity.k;
    }

    private void c()
    {
        String s1 = "";
        if (!TextUtils.isEmpty(H.getTax1Name()))
        {
            s1 = (new StringBuilder()).append(H.getTax1Name()).append(" ").append(com.aadhk.product.library.c.h.c(H.getTax1())).append("%").toString();
        }
        if (!TextUtils.isEmpty(H.getTax2Name()))
        {
            s1 = (new StringBuilder()).append(s1).append(", ").append(H.getTax2Name()).append(" ").append(com.aadhk.product.library.c.h.c(H.getTax2())).append("%").toString();
        }
        h.setSummary(s1);
    }

    static Company d(SettingActivity settingactivity)
    {
        return settingactivity.H;
    }

    private void d()
    {
        String s1;
        if (H.isIncludeService())
        {
            s1 = getString(0x7f090187);
        } else
        {
            s1 = getString(0x7f090188);
        }
        j.setSummary((new StringBuilder()).append(s1).append(", ").append(H.getServiceFee()).append("%").toString());
    }

    static c e(SettingActivity settingactivity)
    {
        return settingactivity.E;
    }

    static void f(SettingActivity settingactivity)
    {
        settingactivity.d();
    }

    static void g(SettingActivity settingactivity)
    {
        settingactivity.c();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f090001);
        addPreferencesFromResource(0x7f050003);
        a = PreferenceManager.getDefaultSharedPreferences(this);
        J = new l(this);
        c = findPreference("prefPrinterCashier");
        c.setOnPreferenceClickListener(this);
        d = findPreference("prefPrinterKitchen");
        d.setOnPreferenceClickListener(this);
        e = findPreference("prefPrinterKitchen2");
        e.setOnPreferenceClickListener(this);
        f = findPreference("prefPrinterBar");
        f.setOnPreferenceClickListener(this);
        g = findPreference("prefCompany");
        g.setOnPreferenceClickListener(this);
        l = findPreference("prefTable");
        m = findPreference("prefCategory");
        n = findPreference("prefItem");
        o = findPreference("prefSupp");
        p = findPreference("prefCustomer");
        q = findPreference("prefPayment");
        r = findPreference("prefDiscount");
        s = findPreference("prefKitchenNote");
        t = findPreference("prefVoidReason");
        u = findPreference("prefUser");
        v = findPreference("prefPrice");
        w = findPreference("prefUserPermission");
        l.setOnPreferenceClickListener(this);
        m.setOnPreferenceClickListener(this);
        n.setOnPreferenceClickListener(this);
        o.setOnPreferenceClickListener(this);
        p.setOnPreferenceClickListener(this);
        q.setOnPreferenceClickListener(this);
        r.setOnPreferenceClickListener(this);
        s.setOnPreferenceClickListener(this);
        t.setOnPreferenceClickListener(this);
        u.setOnPreferenceClickListener(this);
        v.setOnPreferenceClickListener(this);
        w.setOnPreferenceClickListener(this);
        B = findPreference("prefLog");
        B.setOnPreferenceClickListener(this);
        C = findPreference("prefAbout");
        C.setOnPreferenceClickListener(this);
        D = findPreference("prefHelp");
        D.setOnPreferenceClickListener(this);
        z = (ListPreference)findPreference("prefLang");
        A = (ListPreference)findPreference("prefDateFormat");
        x = findPreference("prefRegister");
        x.setOnPreferenceClickListener(this);
        y = findPreference("prefEmailUs");
        y.setOnPreferenceClickListener(this);
        h = findPreference("prefTax");
        h.setOnPreferenceClickListener(this);
        i = findPreference("prefOrderNum");
        i.setOnPreferenceClickListener(this);
        k = findPreference("prefTableDefaultPersonNum");
        k.setOnPreferenceClickListener(this);
        j = findPreference("prefDefaultGratuity");
        j.setOnPreferenceClickListener(this);
        H = ((POSApp)getApplicationContext()).b();
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        F = new r(sqlitedatabase);
        E = new c(sqlitedatabase);
        G = new i(sqlitedatabase);
        I = F.a();
        try
        {
            String s1 = getResources().getString(0x7f090034);
            Object aobj[] = new Object[1];
            aobj[0] = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            String s2 = String.format(s1, aobj);
            String s3 = getString(0x7f09024b);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(J.n());
            String s4 = String.format(s3, aobj1);
            k.setSummary(s4);
            B.setSummary(s2);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            notfoundexception.printStackTrace();
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        ((PreferenceCategory)findPreference("categoryInfo")).removePreference(findPreference("prefHelp"));
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    public boolean onPreferenceClick(Preference preference)
    {
        if (preference != c) goto _L2; else goto _L1
_L1:
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("printerId", 1);
        intent.putExtras(bundle);
        intent.setClass(this, com/aadhk/restpos/PrinterActivity);
        startActivity(intent);
_L4:
        return true;
_L2:
        if (preference == d)
        {
            Intent intent1 = new Intent();
            Bundle bundle1 = new Bundle();
            bundle1.putInt("printerId", 2);
            intent1.putExtras(bundle1);
            intent1.setClass(this, com/aadhk/restpos/PrinterActivity);
            startActivity(intent1);
            return true;
        }
        if (preference == e)
        {
            Intent intent2 = new Intent();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("printerId", 4);
            intent2.putExtras(bundle2);
            intent2.setClass(this, com/aadhk/restpos/PrinterActivity);
            startActivity(intent2);
            return true;
        }
        if (preference == f)
        {
            Intent intent3 = new Intent();
            Bundle bundle3 = new Bundle();
            bundle3.putInt("printerId", 3);
            intent3.putExtras(bundle3);
            intent3.setClass(this, com/aadhk/restpos/PrinterActivity);
            startActivity(intent3);
            return true;
        }
        if (preference == h)
        {
            boolean flag = G.a();
            boolean flag1 = G.b();
            cd cd1 = new cd(this, H, flag, flag1);
            cd1.a(new by(this));
            cd1.show();
            return true;
        }
        if (preference == i)
        {
            ab ab1 = new ab(this, J.q());
            ab1.setTitle(0x7f09026f);
            ab1.a(new bu(this));
            ab1.show();
            return true;
        }
        if (preference == k)
        {
            ad ad1 = new ad(this, (new StringBuilder()).append(J.n()).toString());
            ad1.setTitle(0x7f090182);
            ad1.a(new bv(this));
            ad1.show();
            return true;
        }
        if (preference == j)
        {
            ai ai1 = new ai(this, H);
            ai1.setTitle(0x7f0900c1);
            ai1.a(new bw(this));
            ai1.show();
            return true;
        }
        if (preference == g)
        {
            Intent intent4 = new Intent();
            intent4.setClass(this, com/aadhk/restpos/CompanyActivity);
            startActivity(intent4);
            return true;
        }
        if (preference == B)
        {
            (new com.aadhk.restpos.f.a(this)).e().show();
            return true;
        }
        if (preference == C)
        {
            Intent intent5 = new Intent();
            intent5.setClass(this, com/aadhk/restpos/AboutActivity);
            startActivity(intent5);
            return true;
        }
        if (preference == D)
        {
            a();
            return true;
        }
        if (preference != x)
        {
            break; /* Loop/switch isn't completed */
        }
        K = 1 + K;
        if (K >= 3)
        {
            try
            {
                com.aadhk.b.a.a a1 = new com.aadhk.b.a.a(this, com.aadhk.b.b.c(this, "com.aadhk.restpos.full"), com.aadhk.b.b.b(this, "com.aadhk.restpos.full"));
                a1.setCancelable(true);
                a1.a(b.getString(0x7f090083));
                a1.a(new bx(this));
                a1.show();
            }
            catch (a a2)
            {
                BugSenseHandler.sendException(a2);
                a2.printStackTrace();
                return true;
            }
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (preference == y)
        {
            com.aadhk.product.library.c.l.b(this);
            return true;
        }
        if (preference == l)
        {
            Intent intent6 = new Intent();
            intent6.setClass(this, com/aadhk/restpos/MgrTableActivity);
            startActivity(intent6);
            return true;
        }
        if (preference == m)
        {
            Intent intent7 = new Intent();
            intent7.setClass(this, com/aadhk/restpos/MgrCategoryActivity);
            startActivity(intent7);
            return true;
        }
        if (preference == n)
        {
            Intent intent8 = new Intent();
            intent8.setClass(this, com/aadhk/restpos/MgrItemActivity);
            startActivity(intent8);
            return true;
        }
        if (preference == o)
        {
            Intent intent9 = new Intent();
            intent9.setClass(this, com/aadhk/restpos/MgrModifierActivity);
            intent9.putExtra("type", 1);
            startActivity(intent9);
            return true;
        }
        if (preference == p)
        {
            Intent intent10 = new Intent();
            intent10.setClass(this, com/aadhk/restpos/CustomerActivity);
            Bundle bundle4 = new Bundle();
            bundle4.putString("bundleCustomer", "contextTable");
            intent10.putExtras(bundle4);
            startActivity(intent10);
            return true;
        }
        if (preference == q)
        {
            Intent intent11 = new Intent();
            intent11.setClass(this, com/aadhk/restpos/PaymentMethodActivity);
            startActivity(intent11);
            return true;
        }
        if (preference == r)
        {
            Intent intent12 = new Intent();
            intent12.setClass(this, com/aadhk/restpos/DiscountActivity);
            startActivity(intent12);
            return true;
        }
        if (preference == s)
        {
            Intent intent13 = new Intent();
            intent13.setClass(this, com/aadhk/restpos/KitchenNoteActivity);
            startActivity(intent13);
            return true;
        }
        if (preference == t)
        {
            Intent intent14 = new Intent();
            intent14.setClass(this, com/aadhk/restpos/MgrVoidReasonActivity);
            startActivity(intent14);
            return true;
        }
        if (preference == u)
        {
            Intent intent15 = new Intent();
            intent15.setClass(this, com/aadhk/restpos/UserActivity);
            startActivity(intent15);
            return true;
        }
        if (preference == v)
        {
            if (com.aadhk.b.b.a(this, "com.aadhk.restpos.feature.price") || com.aadhk.b.b.a(this, "com.aadhk.restpos.full"))
            {
                Intent intent17 = new Intent();
                intent17.setClass(this, com/aadhk/restpos/PriceScheduleActivity);
                startActivity(intent17);
                return true;
            } else
            {
                startActivity(new Intent(this, com/aadhk/restpos/PurchaseActivity));
                return true;
            }
        }
        if (preference == w)
        {
            Intent intent16 = new Intent();
            intent16.setClass(this, com/aadhk/restpos/UserPermissionActivity);
            startActivity(intent16);
            return true;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void onResume()
    {
        super.onResume();
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        g.setSummary(H.getName());
        ListPreference listpreference = z;
        int i1 = J.d();
        String s1;
        if (i1 == 1)
        {
            s1 = getString(0x7f09006c);
        } else
        if (i1 == 2)
        {
            s1 = getString(0x7f090074);
        } else
        if (i1 == 3)
        {
            s1 = getString(0x7f09006e);
        } else
        if (i1 == 4)
        {
            s1 = getString(0x7f09006d);
        } else
        if (i1 == 5)
        {
            s1 = getString(0x7f090076);
        } else
        if (i1 == 10)
        {
            s1 = getString(0x7f090078);
        } else
        if (i1 == 7)
        {
            s1 = getString(0x7f090070);
        } else
        if (i1 == 9)
        {
            s1 = getString(0x7f090073);
        } else
        if (i1 == 6)
        {
            s1 = getString(0x7f090077);
        } else
        {
            s1 = getString(0x7f09006b);
        }
        listpreference.setSummary(s1);
        A.setSummary(A.getEntry());
        d.setSummary((CharSequence)I.get(Integer.valueOf(2)));
        e.setSummary((CharSequence)I.get(Integer.valueOf(4)));
        f.setSummary((CharSequence)I.get(Integer.valueOf(3)));
        b();
        c();
        J.s();
        d();
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        Preference preference = findPreference(s1);
        if (preference instanceof ListPreference)
        {
            ListPreference listpreference = (ListPreference)preference;
            if (listpreference == z)
            {
                ((POSApp)getApplication()).a();
                Intent intent = getIntent();
                intent.addFlags(0x10000);
                finish();
                startActivity(intent);
            } else
            if (listpreference == A)
            {
                A.setSummary(listpreference.getEntry());
                return;
            }
        }
    }
}
