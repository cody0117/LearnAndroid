// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.aadhk.restpos.RolePermissionActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            ir, iq

public final class ip extends Fragment
{

    private RolePermissionActivity a;
    private View b;
    private ListView c;
    private String d[];
    private int e;
    private ir f;

    public ip()
    {
    }

    static int a(ip ip1, int i)
    {
        ip1.e = i;
        return i;
    }

    static RolePermissionActivity a(ip ip1)
    {
        return ip1.a;
    }

    static ir b(ip ip1)
    {
        return ip1.f;
    }

    static String[] c(ip ip1)
    {
        return ip1.d;
    }

    static int d(ip ip1)
    {
        return ip1.e;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (a.c())
        {
            e = 0;
        } else
        {
            e = -1;
        }
        f = new ir(this, (byte)0);
        c.setAdapter(f);
    }

    public final void onAttach(Activity activity)
    {
        a = (RolePermissionActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = getResources().getStringArray(0x7f0e000d);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f0300a1, viewgroup, false);
        c = (ListView)b.findViewById(0x7f090278);
        c.setOnItemClickListener(new iq(this));
        return b;
    }
}
