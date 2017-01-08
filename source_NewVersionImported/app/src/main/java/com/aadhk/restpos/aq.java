// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            MgrItemPickerActivity, ar

final class aq extends FragmentStatePagerAdapter
{

    final MgrItemPickerActivity a;

    public aq(MgrItemPickerActivity mgritempickeractivity, FragmentManager fragmentmanager)
    {
        a = mgritempickeractivity;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return MgrItemPickerActivity.a(a).size();
    }

    public final Fragment getItem(int i)
    {
        return ar.a(((Category)MgrItemPickerActivity.a(a).get(i)).getId());
    }

    public final CharSequence getPageTitle(int i)
    {
        return ((Category)MgrItemPickerActivity.a(a).get(i)).getName();
    }
}
