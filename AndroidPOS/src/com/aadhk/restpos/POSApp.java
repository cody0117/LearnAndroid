// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.g.a;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.g.y;
import com.aadhk.restpos.g.z;
import com.aadhk.restpos.util.l;
import com.aadhk.restpos.util.r;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.http.client.CookieStore;

public class POSApp extends Application
{

    public static int a;
    private static CookieStore c;
    private int b;
    private User d;
    private Map e;
    private Company f;
    private List g;
    private List h;
    private POSPrinterSetting i;
    private List j;

    public POSApp()
    {
    }

    public static void a(CookieStore cookiestore)
    {
        c = cookiestore;
    }

    public static CookieStore p()
    {
        return c;
    }

    public final void a()
    {
        String as[] = com.aadhk.restpos.util.l.a((new r(this)).e()).split("_");
        Locale locale = new Locale(as[0], as[1]);
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        if (!configuration.locale.equals(locale))
        {
            configuration.locale = locale;
            Locale.setDefault(locale);
            getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
        }
    }

    public final void a(int i1)
    {
        b = i1;
    }

    public final void a(Company company)
    {
        f = company;
    }

    public final void a(User user, Map map)
    {
        d = user;
        e = map;
    }

    public final Company b()
    {
        if (f == null)
        {
            c();
        }
        return f;
    }

    public final void c()
    {
        f = (new a(this)).a();
        com.aadhk.restpos.b.f.a().c();
    }

    public final User d()
    {
        if (d == null)
        {
            SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(this);
            d = new User();
            d.setAccount(sharedpreferences.getString("pref_user_account", ""));
            d.setRole(sharedpreferences.getInt("pref_user_role", 2));
        }
        return d;
    }

    public final Map e()
    {
        if (e == null)
        {
            f();
        }
        return e;
    }

    public final void f()
    {
        if (e == null)
        {
            e = (new y(this)).b(d().getRole());
            com.aadhk.restpos.b.f.a().c();
        }
    }

    public final List g()
    {
        if (h == null)
        {
            h();
        }
        return h;
    }

    public final void h()
    {
        h = (new z(this)).b();
        com.aadhk.restpos.b.f.a().c();
    }

    public final List i()
    {
        if (g == null)
        {
            j();
        }
        return g;
    }

    public final void j()
    {
        g = (new com.aadhk.restpos.g.r(this)).b();
        com.aadhk.restpos.b.f.a().c();
    }

    public final POSPrinterSetting k()
    {
        if (i == null)
        {
            l();
        }
        return i;
    }

    public final void l()
    {
        i = (new u(this)).a();
        com.aadhk.restpos.b.f.a().c();
    }

    public final List m()
    {
        if (j == null)
        {
            n();
        }
        return j;
    }

    public final void n()
    {
        j = (new u(this)).b();
        com.aadhk.restpos.b.f.a().c();
    }

    public final int o()
    {
        return b;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        a();
        super.onConfigurationChanged(configuration);
    }

    public void onCreate()
    {
        super.onCreate();
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(this);
        String s = sharedpreferences.getString("prefLang", "");
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("prefLangSys", Locale.getDefault().toString());
        if (s.equals(""))
        {
            String s1 = Locale.getDefault().toString();
            int i1;
            if (s1.equals("zh_TW") || s1.contains("zh_HK"))
            {
                i1 = 1;
            } else
            if (s1.equals("es_ES") || s1.contains("es_"))
            {
                i1 = 2;
            } else
            if (s1.equals("it_IT") || s1.contains("it_"))
            {
                i1 = 3;
            } else
            if (s1.equals("de_DE") || s1.contains("de_"))
            {
                i1 = 4;
            } else
            if (s1.equals("el_GR") || s1.contains("el_"))
            {
                i1 = 5;
            } else
            if (s1.equals("nl_NL") || s1.contains("nl_"))
            {
                i1 = 9;
            } else
            if (s1.equals("hu_HU") || s1.contains("hu_"))
            {
                i1 = 10;
            } else
            if (s1.equals("fr_FR") || s1.contains("fr_"))
            {
                i1 = 7;
            } else
            if (s1.equals("pt_BR"))
            {
                i1 = 8;
            } else
            if (s1.equals("zh_CN"))
            {
                i1 = 6;
            } else
            if (s1.equals("in_IN") || s1.contains("in_"))
            {
                i1 = 11;
            } else
            if (s1.equals("ru_RU") || s1.contains("ru_"))
            {
                i1 = 12;
            } else
            {
                i1 = 0;
            }
            editor.putString("prefLang", (new StringBuilder()).append(i1).toString());
        }
        editor.commit();
        a();
        com.aadhk.restpos.b.f.a(getApplicationContext());
    }
}
