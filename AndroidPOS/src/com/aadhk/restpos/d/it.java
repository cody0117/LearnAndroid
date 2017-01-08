// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.text.TextUtils;
import com.aadhk.b.b;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.h;
import com.aadhk.product.library.c.l;
import com.aadhk.restpos.AboutActivity;
import com.aadhk.restpos.CompanyActivity;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.DiscountActivity;
import com.aadhk.restpos.KitchenNoteActivity;
import com.aadhk.restpos.MgrCategoryActivity;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.MgrTableActivity;
import com.aadhk.restpos.MgrTableGroupActivity;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.PaymentMethodActivity;
import com.aadhk.restpos.PriceScheduleActivity;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.PurchaseActivity;
import com.aadhk.restpos.RolePermissionActivity;
import com.aadhk.restpos.ServiceFeeActivity;
import com.aadhk.restpos.SettingActivity;
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.VoidReasonActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.c.ab;
import com.aadhk.restpos.c.ak;
import com.aadhk.restpos.c.am;
import com.aadhk.restpos.c.at;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.cp;
import com.aadhk.restpos.c.cw;
import com.aadhk.restpos.g.aa;
import com.aadhk.restpos.g.z;
import com.aadhk.restpos.util.a;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            iu, iz, iv, iw, 
//            ix, iy, ja, jb, 
//            je

public final class it extends PreferenceFragment
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener, android.preference.Preference.OnPreferenceClickListener
{

    private ListPreference A;
    private Preference B;
    private Preference C;
    private Preference D;
    private SettingActivity E;
    private Preference F;
    private Preference G;
    private Preference H;
    private Company I;
    private Map J;
    private List K;
    private r L;
    private aa M;
    private z N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private Preference a;
    private Preference b;
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

    public it()
    {
    }

    static aa a(it it1)
    {
        return it1.M;
    }

    static String a(it it1, String s1)
    {
        it1.O = s1;
        return s1;
    }

    static List a(it it1, List list)
    {
        it1.K = list;
        return list;
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
        ax ax1 = new ax(E);
        ax1.setTitle(0x7f08037b);
        ax1.a(stringbuffer.toString());
        ax1.show();
        return;
    }

    private void a(int i1)
    {
        at at1 = new at(E, I, i1, K);
        at1.setTitle(0x7f0800ef);
        at1.a(new iu(this, i1));
        at1.show();
    }

    static SettingActivity b(it it1)
    {
        return it1.E;
    }

    static String b(it it1, String s1)
    {
        it1.P = s1;
        return s1;
    }

    private void b()
    {
        String s1 = "";
        if (!TextUtils.isEmpty(I.getTax1Name()))
        {
            s1 = (new StringBuilder()).append(I.getTax1Name()).append(" ").append(com.aadhk.product.library.c.h.c(I.getTax1())).append("%").toString();
        }
        if (!TextUtils.isEmpty(I.getTax2Name()))
        {
            s1 = (new StringBuilder()).append(s1).append(", ").append(I.getTax2Name()).append(" ").append(com.aadhk.product.library.c.h.c(I.getTax2())).append("%").toString();
        }
        if (!TextUtils.isEmpty(I.getTax3Name()))
        {
            s1 = (new StringBuilder()).append(s1).append(", ").append(I.getTax3Name()).append(" ").append(com.aadhk.product.library.c.h.c(I.getTax3())).append("%").toString();
        }
        f.setSummary(s1);
    }

    static r c(it it1)
    {
        return it1.L;
    }

    static String c(it it1, String s1)
    {
        it1.Q = s1;
        return s1;
    }

    static Preference d(it it1)
    {
        return it1.i;
    }

    static String d(it it1, String s1)
    {
        it1.R = s1;
        return s1;
    }

    static Preference e(it it1)
    {
        return it1.j;
    }

    static void f(it it1)
    {
        String s1 = "";
        String s2 = it1.getString(0x7f08034e);
        Object aobj[] = new Object[1];
        aobj[0] = (new StringBuilder()).append(it1.P).append(it1.Q).append(it1.R).toString();
        String s3 = String.format(s2, aobj);
        if (!TextUtils.isEmpty(it1.O))
        {
            String s4 = it1.getString(0x7f08034f);
            Object aobj1[] = new Object[1];
            aobj1[0] = (new StringBuilder()).append(it1.P).append(it1.O).append(it1.R).toString();
            s1 = String.format(s4, aobj1);
        }
        it1.g.setSummary((new StringBuilder()).append(s3).append(" ").append(s1).toString());
    }

    static z g(it it1)
    {
        return it1.N;
    }

    static List h(it it1)
    {
        return it1.K;
    }

    static void i(it it1)
    {
        String s1;
        if (it1.I.isIncludeServiceFeeDineIn())
        {
            s1 = it1.getString(0x7f0801be);
        } else
        {
            s1 = it1.getString(0x7f0801bf);
        }
        if (it1.I.getServiceFeeIdDineIn() == -1)
        {
            it1.B.setSummary(s1);
        } else
        {
            Iterator iterator = it1.K.iterator();
            while (iterator.hasNext()) 
            {
                ServiceFee servicefee = (ServiceFee)iterator.next();
                if (it1.I.getServiceFeeIdDineIn() == servicefee.getId())
                {
                    if (servicefee.isPercentage())
                    {
                        it1.B.setSummary((new StringBuilder()).append(s1).append(", ").append(com.aadhk.product.library.c.h.b(servicefee.getAmount())).append("%").toString());
                    } else
                    {
                        it1.B.setSummary((new StringBuilder()).append(s1).append(", ").append(com.aadhk.restpos.util.p.a(it1.I.getDecimalPlace(), servicefee.getAmount(), it1.I.getCurrencySign())).toString());
                    }
                }
            }
        }
    }

    static void j(it it1)
    {
        String s1;
        if (it1.I.isIncludeServiceFeeTakeOut())
        {
            s1 = it1.getString(0x7f0801be);
        } else
        {
            s1 = it1.getString(0x7f0801bf);
        }
        if (it1.I.getServiceFeeIdTakeOut() == -1)
        {
            it1.C.setSummary(s1);
        } else
        {
            Iterator iterator = it1.K.iterator();
            while (iterator.hasNext()) 
            {
                ServiceFee servicefee = (ServiceFee)iterator.next();
                if (it1.I.getServiceFeeIdTakeOut() == servicefee.getId())
                {
                    if (servicefee.isPercentage())
                    {
                        it1.C.setSummary((new StringBuilder()).append(s1).append(", ").append(com.aadhk.product.library.c.h.b(servicefee.getAmount())).append("%").toString());
                    } else
                    {
                        it1.C.setSummary((new StringBuilder()).append(s1).append(", ").append(com.aadhk.restpos.util.p.a(it1.I.getDecimalPlace(), servicefee.getAmount(), it1.I.getCurrencySign())).toString());
                    }
                }
            }
        }
    }

    static void k(it it1)
    {
        String s1;
        if (it1.I.isIncludeServiceFeeDelivery())
        {
            s1 = it1.getString(0x7f0801be);
        } else
        {
            s1 = it1.getString(0x7f0801bf);
        }
        if (it1.I.getServiceFeeIdDelivery() == 0)
        {
            it1.D.setSummary(s1);
        } else
        {
            Iterator iterator = it1.K.iterator();
            while (iterator.hasNext()) 
            {
                ServiceFee servicefee = (ServiceFee)iterator.next();
                if (it1.I.getServiceFeeIdDelivery() == servicefee.getId())
                {
                    if (servicefee.isPercentage())
                    {
                        it1.D.setSummary((new StringBuilder()).append(s1).append(", ").append(com.aadhk.product.library.c.h.b(servicefee.getAmount())).append("%").toString());
                    } else
                    {
                        it1.D.setSummary((new StringBuilder()).append(s1).append(", ").append(com.aadhk.restpos.util.p.a(it1.I.getDecimalPlace(), servicefee.getAmount(), it1.I.getCurrencySign())).toString());
                    }
                }
            }
        }
    }

    static String l(it it1)
    {
        return it1.P;
    }

    static String m(it it1)
    {
        return it1.Q;
    }

    static String n(it it1)
    {
        return it1.R;
    }

    static Company o(it it1)
    {
        return it1.I;
    }

    static void p(it it1)
    {
        it1.b();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        M = E.a();
        N = E.b();
        J = M.c();
        try
        {
            String s1 = getString(0x7f080064);
            Object aobj[] = new Object[1];
            aobj[0] = E.getPackageManager().getPackageInfo(E.getPackageName(), 0).versionName;
            String s2 = String.format(s1, aobj);
            String s3 = getString(0x7f0802a7);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(L.n());
            String s4 = String.format(s3, aobj1);
            String s5 = getString(0x7f080291);
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(L.o());
            String s6 = String.format(s5, aobj2);
            i.setSummary(s4);
            F.setSummary(s2);
            j.setSummary(s6);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            notfoundexception.printStackTrace();
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        getPreferenceScreen().removePreference(k);
        ((PreferenceCategory)findPreference("categoryInfo")).removePreference(findPreference("prefHelp"));
    }

    public final void onAttach(Activity activity)
    {
        E = (SettingActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPreferencesFromResource(0x7f050006);
        L = new r(E);
        B = findPreference("prefDineInServiceFree");
        B.setOnPreferenceClickListener(this);
        C = findPreference("prefTakeOutServiceFree");
        C.setOnPreferenceClickListener(this);
        D = findPreference("prefDeliveryServiceFree");
        D.setOnPreferenceClickListener(this);
        a = findPreference("prefPrinterCashier");
        a.setOnPreferenceClickListener(this);
        b = findPreference("prefPrinterKitchen");
        b.setOnPreferenceClickListener(this);
        c = findPreference("prefPrinterKitchen2");
        c.setOnPreferenceClickListener(this);
        d = findPreference("prefPrinterBar");
        d.setOnPreferenceClickListener(this);
        e = findPreference("prefCompany");
        e.setOnPreferenceClickListener(this);
        l = findPreference("prefTable");
        k = findPreference("prefTableGroup");
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
        k.setOnPreferenceClickListener(this);
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
        F = findPreference("prefLog");
        F.setOnPreferenceClickListener(this);
        G = findPreference("prefAbout");
        G.setOnPreferenceClickListener(this);
        H = findPreference("prefHelp");
        H.setOnPreferenceClickListener(this);
        z = (ListPreference)findPreference("prefLang");
        A = (ListPreference)findPreference("prefDateFormat");
        x = findPreference("prefRegister");
        x.setOnPreferenceClickListener(this);
        y = findPreference("prefEmailUs");
        y.setOnPreferenceClickListener(this);
        f = findPreference("prefTax");
        f.setOnPreferenceClickListener(this);
        g = findPreference("prefOrderNum");
        g.setOnPreferenceClickListener(this);
        i = findPreference("prefTableDefaultPersonNum");
        i.setOnPreferenceClickListener(this);
        j = findPreference("prefItemFontSize");
        j.setOnPreferenceClickListener(this);
        h = findPreference("prefServiceFee");
        h.setOnPreferenceClickListener(this);
        I = ((POSApp)E.getApplicationContext()).b();
    }

    public final void onPause()
    {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    public final boolean onPreferenceClick(Preference preference)
    {
        if (preference == B)
        {
            a(0);
        } else
        {
            if (preference == C)
            {
                a(1);
                return true;
            }
            if (preference == D)
            {
                a(2);
                return true;
            }
            if (preference == a)
            {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putInt("printerId", 1);
                intent.putExtras(bundle);
                intent.setClass(E, com/aadhk/restpos/PrinterActivity);
                startActivity(intent);
                return true;
            }
            if (preference == b)
            {
                Intent intent1 = new Intent();
                Bundle bundle1 = new Bundle();
                bundle1.putInt("printerId", 2);
                intent1.putExtras(bundle1);
                intent1.setClass(E, com/aadhk/restpos/PrinterActivity);
                startActivity(intent1);
                return true;
            }
            if (preference == c)
            {
                Intent intent2 = new Intent();
                Bundle bundle2 = new Bundle();
                bundle2.putInt("printerId", 4);
                intent2.putExtras(bundle2);
                intent2.setClass(E, com/aadhk/restpos/PrinterActivity);
                startActivity(intent2);
                return true;
            }
            if (preference == d)
            {
                Intent intent3 = new Intent();
                Bundle bundle3 = new Bundle();
                bundle3.putInt("printerId", 3);
                intent3.putExtras(bundle3);
                intent3.setClass(E, com/aadhk/restpos/PrinterActivity);
                startActivity(intent3);
                return true;
            }
            if (preference == f)
            {
                boolean flag = M.a(1);
                boolean flag1 = M.a(2);
                boolean flag2 = M.a(3);
                am am1 = new am(E, I, flag, flag1, flag2);
                am1.a(new iz(this));
                am1.show();
                return true;
            }
            if (preference == g)
            {
                ab ab1 = new ab(E, P, Q, R);
                ab1.setTitle(0x7f0802ca);
                ab1.a(new iv(this));
                ab1.show();
                return true;
            }
            if (preference == i)
            {
                ak ak1 = new ak(E, (new StringBuilder()).append(L.n()).toString());
                ak1.setTitle(0x7f0801ba);
                ak1.a(new iw(this));
                ak1.show();
                return true;
            }
            if (preference == j)
            {
                cw cw1 = new cw(E, L.o());
                cw1.a(new ix(this));
                cw1.show();
                return true;
            }
            if (preference == h)
            {
                startActivity(new Intent(E, com/aadhk/restpos/ServiceFeeActivity));
                return true;
            }
            if (preference == e)
            {
                Intent intent4 = new Intent();
                intent4.setClass(E, com/aadhk/restpos/CompanyActivity);
                startActivity(intent4);
                return true;
            }
            if (preference == F)
            {
                (new a(E)).e().show();
                return true;
            }
            if (preference == G)
            {
                Intent intent5 = new Intent();
                intent5.setClass(E, com/aadhk/restpos/AboutActivity);
                startActivity(intent5);
                return true;
            }
            if (preference == H)
            {
                a();
                return true;
            }
            if (preference == x)
            {
                cp cp1 = new cp(E, L.y());
                cp1.a(new iy(this));
                cp1.show();
                return true;
            }
            if (preference == y)
            {
                com.aadhk.product.library.c.l.a(E);
                return true;
            }
            if (preference == l)
            {
                Intent intent6 = new Intent();
                intent6.setClass(E, com/aadhk/restpos/MgrTableActivity);
                startActivity(intent6);
                return true;
            }
            if (preference == k)
            {
                Intent intent7 = new Intent();
                intent7.setClass(E, com/aadhk/restpos/MgrTableGroupActivity);
                startActivity(intent7);
                return true;
            }
            if (preference == m)
            {
                Intent intent8 = new Intent();
                intent8.setClass(E, com/aadhk/restpos/MgrCategoryActivity);
                startActivity(intent8);
                return true;
            }
            if (preference == n)
            {
                Intent intent9 = new Intent();
                intent9.setClass(E, com/aadhk/restpos/MgrItemActivity);
                startActivity(intent9);
                return true;
            }
            if (preference == o)
            {
                Intent intent10 = new Intent();
                intent10.setClass(E, com/aadhk/restpos/MgrModifierActivity);
                intent10.putExtra("type", 1);
                startActivity(intent10);
                return true;
            }
            if (preference == p)
            {
                Intent intent11 = new Intent();
                intent11.setClass(E, com/aadhk/restpos/CustomerActivity);
                Bundle bundle4 = new Bundle();
                bundle4.putString("bundleCustomer", "contextTable");
                intent11.putExtras(bundle4);
                startActivity(intent11);
                return true;
            }
            if (preference == q)
            {
                Intent intent12 = new Intent();
                intent12.setClass(E, com/aadhk/restpos/PaymentMethodActivity);
                startActivity(intent12);
                return true;
            }
            if (preference == r)
            {
                Intent intent13 = new Intent();
                intent13.setClass(E, com/aadhk/restpos/DiscountActivity);
                startActivity(intent13);
                return true;
            }
            if (preference == s)
            {
                Intent intent14 = new Intent();
                intent14.setClass(E, com/aadhk/restpos/KitchenNoteActivity);
                startActivity(intent14);
                return true;
            }
            if (preference == t)
            {
                Intent intent15 = new Intent();
                intent15.setClass(E, com/aadhk/restpos/VoidReasonActivity);
                startActivity(intent15);
                return true;
            }
            if (preference == u)
            {
                Intent intent16 = new Intent();
                intent16.setClass(E, com/aadhk/restpos/UserActivity);
                startActivity(intent16);
                return true;
            }
            if (preference == v)
            {
                if (com.aadhk.b.b.a(E, "com.aadhk.restpos.feature.price") || com.aadhk.b.b.a(E, "com.aadhk.restpos.full"))
                {
                    Intent intent18 = new Intent();
                    intent18.setClass(E, com/aadhk/restpos/PriceScheduleActivity);
                    startActivity(intent18);
                    return true;
                } else
                {
                    startActivity(new Intent(E, com/aadhk/restpos/PurchaseActivity));
                    return true;
                }
            }
            if (preference == w)
            {
                Intent intent17 = new Intent();
                intent17.setClass(E, com/aadhk/restpos/RolePermissionActivity);
                startActivity(intent17);
                return true;
            }
        }
        return true;
    }

    public final void onResume()
    {
        super.onResume();
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        e.setSummary(I.getName());
        ListPreference listpreference = z;
        SettingActivity settingactivity = E;
        int i1 = L.e();
        String s1;
        if (i1 == 1)
        {
            s1 = settingactivity.getString(0x7f08009e);
        } else
        if (i1 == 2)
        {
            s1 = settingactivity.getString(0x7f0800a6);
        } else
        if (i1 == 3)
        {
            s1 = settingactivity.getString(0x7f0800a0);
        } else
        if (i1 == 4)
        {
            s1 = settingactivity.getString(0x7f08009f);
        } else
        if (i1 == 5)
        {
            s1 = settingactivity.getString(0x7f0800a8);
        } else
        if (i1 == 10)
        {
            s1 = settingactivity.getString(0x7f0800ab);
        } else
        if (i1 == 7)
        {
            s1 = settingactivity.getString(0x7f0800a2);
        } else
        if (i1 == 9)
        {
            s1 = settingactivity.getString(0x7f0800a5);
        } else
        if (i1 == 6)
        {
            s1 = settingactivity.getString(0x7f0800a9);
        } else
        if (i1 == 8)
        {
            s1 = settingactivity.getString(0x7f0800a1);
        } else
        if (i1 == 11)
        {
            s1 = settingactivity.getString(0x7f0800ac);
        } else
        if (i1 == 12)
        {
            s1 = settingactivity.getString(0x7f0800aa);
        } else
        {
            s1 = settingactivity.getString(0x7f08009d);
        }
        listpreference.setSummary(s1);
        A.setSummary(A.getEntry());
        b.setSummary((CharSequence)J.get(Integer.valueOf(2)));
        c.setSummary((CharSequence)J.get(Integer.valueOf(4)));
        d.setSummary((CharSequence)J.get(Integer.valueOf(3)));
        (new d(new ja(this, (byte)0), E, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        b();
        (new d(new jb(this, (byte)0), E, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        Preference preference = findPreference(s1);
        if (preference instanceof ListPreference)
        {
            ListPreference listpreference = (ListPreference)preference;
            if (listpreference == z)
            {
                (new d(new je(this, (byte)0), E, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            } else
            if (listpreference == A)
            {
                A.setSummary(listpreference.getEntry());
                return;
            }
        }
    }
}
