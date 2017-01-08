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
import com.aadhk.restpos.b.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.t;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.f.l;
import java.util.Locale;
import java.util.Map;

public class POSApp extends Application
{

    public static int a;
    private User b;
    private Map c;
    private Company d;
    private int e;

    public POSApp()
    {
    }

    public final void a()
    {
        int i = (new l(this)).d();
        String s;
        String as[];
        Locale locale;
        Configuration configuration;
        if (i == 1)
        {
            s = "zh_TW";
        } else
        if (i == 2)
        {
            s = "es_ES";
        } else
        if (i == 3)
        {
            s = "it_IT";
        } else
        if (i == 4)
        {
            s = "de_DE";
        } else
        if (i == 5)
        {
            s = "el_GR";
        } else
        if (i == 10)
        {
            s = "hu_HU";
        } else
        if (i == 7)
        {
            s = "fr_FR";
        } else
        if (i == 9)
        {
            s = "nl_NL";
        } else
        if (i == 6)
        {
            s = "zh_CN";
        } else
        {
            s = "en_US";
        }
        as = s.split("_");
        locale = new Locale(as[0], as[1]);
        configuration = getBaseContext().getResources().getConfiguration();
        if (!configuration.locale.equals(locale))
        {
            configuration.locale = locale;
            Locale.setDefault(locale);
            getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
        }
    }

    public final void a(int i)
    {
        e = i;
    }

    public final void a(Company company)
    {
        d = company;
    }

    public final void a(User user, Map map)
    {
        b = user;
        c = map;
    }

    public final Company b()
    {
        if (d == null)
        {
            d = (new c(f.a().b())).a();
            f.a().c();
        }
        return d;
    }

    public final User c()
    {
        if (b == null)
        {
            SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(this);
            b = new User();
            b.setAccount(sharedpreferences.getString("pref_user_account", ""));
            b.setRole(sharedpreferences.getInt("pref_user_role", 2));
        }
        return b;
    }

    public final Map d()
    {
        if (c == null)
        {
            c = (new t(f.a().b())).b(c().getRole());
            f.a().c();
        }
        return c;
    }

    public final int e()
    {
        return e;
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
            int i;
            if (s1.equals("zh_TW") || s1.contains("zh_HK"))
            {
                i = 1;
            } else
            if (s1.equals("es_ES") || s1.contains("es_"))
            {
                i = 2;
            } else
            if (s1.equals("it_IT") || s1.contains("it_"))
            {
                i = 3;
            } else
            if (s1.equals("de_DE") || s1.contains("de_"))
            {
                i = 4;
            } else
            if (s1.equals("el_GR") || s1.contains("el_"))
            {
                i = 5;
            } else
            if (s1.equals("nl_NL") || s1.contains("nl_"))
            {
                i = 9;
            } else
            if (s1.equals("hu_HU") || s1.contains("hu_"))
            {
                i = 10;
            } else
            if (s1.equals("fr_FR") || s1.contains("fr_"))
            {
                i = 7;
            } else
            if (s1.equals("zh_CN"))
            {
                i = 6;
            } else
            {
                i = 0;
            }
            editor.putString("prefLang", (new StringBuilder()).append(i).toString());
        }
        editor.commit();
        a();
        f.a(getApplicationContext());
    }
}
