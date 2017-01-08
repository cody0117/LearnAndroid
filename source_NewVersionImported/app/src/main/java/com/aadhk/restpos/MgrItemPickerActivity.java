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
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.viewpagerindicator.TabPageIndicator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, aq

public class MgrItemPickerActivity extends POSActivity
{

    private static List o;
    private static i p;
    private aq a;
    private TabPageIndicator l;
    private ViewPager m;
    private List n;

    public MgrItemPickerActivity()
    {
    }

    static i a()
    {
        return p;
    }

    static List a(MgrItemPickerActivity mgritempickeractivity)
    {
        return mgritempickeractivity.n;
    }

    static List b()
    {
        return o;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300a8);
        setTitle(0x7f090264);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        n = (new b(sqlitedatabase)).b();
        p = new i(sqlitedatabase);
        o = h.a(getIntent().getExtras().getLongArray("bundleItemPicker"));
        a = new aq(this, getSupportFragmentManager());
        m = (ViewPager)findViewById(0x7f0b0141);
        m.setAdapter(a);
        l = (TabPageIndicator)findViewById(0x7f0b0140);
        l.a(m);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0005, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        Intent intent;
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131427979: 
            intent = new Intent();
            break;
        }
        intent.putExtra("bundleItemPicker", h.a(o));
        setResult(-1, intent);
        finish();
        return true;
    }
}
