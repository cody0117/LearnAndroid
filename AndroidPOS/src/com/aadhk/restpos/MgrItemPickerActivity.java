// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.g.f;
import com.viewpagerindicator.TabPageIndicator;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, at

public class MgrItemPickerActivity extends POSActivity
{

    private static List r;
    private static ArrayList s;
    private static f t;
    private at a;
    private TabPageIndicator o;
    private ViewPager p;
    private List q;

    public MgrItemPickerActivity()
    {
    }

    static f a()
    {
        return t;
    }

    static List a(MgrItemPickerActivity mgritempickeractivity)
    {
        return mgritempickeractivity.q;
    }

    static List b()
    {
        return r;
    }

    static ArrayList c()
    {
        return s;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300c6);
        setTitle(0x7f0802bf);
        t = new f(this);
        q = t.a();
        s = new ArrayList();
        r = h.a(getIntent().getExtras().getLongArray("bundleItemPicker"));
        a = new at(this, getSupportFragmentManager());
        p = (ViewPager)findViewById(0x7f090186);
        p.setAdapter(a);
        o = (TabPageIndicator)findViewById(0x7f090185);
        o.setVisibility(0);
        o.a(p);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0005, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        f _tmp = t;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        Intent intent;
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131297036: 
            intent = new Intent();
            break;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("bundleItemPicker", s);
        intent.putExtras(bundle);
        setResult(-1, intent);
        finish();
        return true;
    }
}
