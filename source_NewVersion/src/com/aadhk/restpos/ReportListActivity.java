// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.d.ek;
import com.aadhk.restpos.d.eq;
import com.aadhk.restpos.d.k;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class ReportListActivity extends POSActivity
{

    public boolean a;
    private List l;
    private SQLiteDatabase m;

    public ReportListActivity()
    {
    }

    public final SQLiteDatabase a()
    {
        return m;
    }

    public final void a(List list, String s, String s1)
    {
        l = list;
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        Object obj;
        if (!list.isEmpty())
        {
            obj = new eq();
            Bundle bundle = new Bundle();
            bundle.putString("fromDate", s);
            bundle.putString("toDate", s1);
            ((Fragment) (obj)).setArguments(bundle);
        } else
        {
            obj = new k();
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, ((Fragment) (obj)));
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, ((Fragment) (obj)));
            fragmenttransaction.addToBackStack(null);
        }
        fragmenttransaction.commit();
    }

    public final List b()
    {
        return l;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030021);
        setTitle(0x7f090195);
        m = f.a().b();
        View view = findViewById(0x7f0b005a);
        boolean flag;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.replace(0x7f0b0058, new ek());
        fragmenttransaction.commit();
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }
}
