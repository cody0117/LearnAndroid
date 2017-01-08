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
import com.aadhk.restpos.UserPermissionActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            gh, gg

public final class gf extends Fragment
{

    private UserPermissionActivity a;
    private View b;
    private ListView c;
    private String d[];
    private int e;
    private gh f;

    public gf()
    {
    }

    static int a(gf gf1, int i)
    {
        gf1.e = i;
        return i;
    }

    static UserPermissionActivity a(gf gf1)
    {
        return gf1.a;
    }

    static gh b(gf gf1)
    {
        return gf1.f;
    }

    static String[] c(gf gf1)
    {
        return gf1.d;
    }

    static int d(gf gf1)
    {
        return gf1.e;
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
        f = new gh(this, (byte)0);
        c.setAdapter(f);
    }

    public final void onAttach(Activity activity)
    {
        a = (UserPermissionActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = getResources().getStringArray(0x7f07000d);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030090, viewgroup, false);
        c = (ListView)b.findViewById(0x7f0b022f);
        c.setOnItemClickListener(new gg(this));
        return b;
    }
}
