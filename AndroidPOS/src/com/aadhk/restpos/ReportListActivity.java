// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.d.af;
import com.aadhk.restpos.d.hk;
import com.aadhk.restpos.d.hr;
import com.aadhk.restpos.g.w;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class ReportListActivity extends POSActivity
{

    public boolean a;
    private List o;
    private w p;

    public ReportListActivity()
    {
        o = new ArrayList();
    }

    public final w a()
    {
        return p;
    }

    public final void a(List list, String s, String s1)
    {
        o = list;
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        Object obj;
        if (!list.isEmpty())
        {
            obj = new hr();
            Bundle bundle = new Bundle();
            bundle.putString("fromDate", s);
            bundle.putString("toDate", s1);
            ((Fragment) (obj)).setArguments(bundle);
        } else
        {
            obj = new af();
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f09005e, ((Fragment) (obj)));
        } else
        {
            fragmenttransaction.replace(0x7f09005c, ((Fragment) (obj)));
            fragmenttransaction.addToBackStack(null);
        }
        fragmenttransaction.commit();
    }

    public final List b()
    {
        return o;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030022);
        setTitle(0x7f0801d0);
        p = new w(this);
        View view = findViewById(0x7f09005e);
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
        fragmenttransaction.replace(0x7f09005c, new hk());
        fragmenttransaction.commit();
    }

    public void onDestroy()
    {
        w _tmp = p;
        f.a().c();
        super.onDestroy();
    }
}
