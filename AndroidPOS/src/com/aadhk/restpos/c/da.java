// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            db

public final class da extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private GridView f;
    private Button g;
    private Button h;
    private MgrItemActivity i;
    private List j;
    private List k;

    public da(MgrItemActivity mgritemactivity, Item item)
    {
        super(mgritemactivity, 0x7f030065);
        i = mgritemactivity;
        j = mgritemactivity.d();
        k = new ArrayList();
        if (item != null)
        {
            String s = item.getModifierGroupIds();
            if (!TextUtils.isEmpty(s))
            {
                String as[] = s.split("\\,");
                for (Iterator iterator = j.iterator(); iterator.hasNext();)
                {
                    ModifierGroup modifiergroup = (ModifierGroup)iterator.next();
                    int l = 0;
                    while (l < as.length) 
                    {
                        if ((long)Integer.parseInt(as[l].trim()) == modifiergroup.getId())
                        {
                            k.add(modifiergroup);
                        }
                        l++;
                    }
                }

            }
        }
        f = (GridView)findViewById(0x7f090163);
        f.setOnItemClickListener(this);
        f.setAdapter(new db(this, (byte)0));
        g = (Button)findViewById(0x7f0900db);
        h = (Button)findViewById(0x7f09005b);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
    }

    static List a(da da1)
    {
        return da1.j;
    }

    static MgrItemActivity b(da da1)
    {
        return da1.i;
    }

    static List c(da da1)
    {
        return da1.k;
    }

    public final void onClick(View view)
    {
        if (view == g)
        {
            if (a != null)
            {
                a.a(k);
                dismiss();
            }
        } else
        if (view == h)
        {
            dismiss();
            return;
        }
    }

    public final void onItemClick(AdapterView adapterview, View view, int l, long l1)
    {
        ModifierGroup modifiergroup = (ModifierGroup)j.get(l);
        ImageView imageview = (ImageView)view.findViewById(0x7f09002c);
        if (imageview.getVisibility() == 8)
        {
            imageview.setVisibility(0);
            k.add(modifiergroup);
            return;
        } else
        {
            imageview.setVisibility(8);
            k.remove(modifiergroup);
            return;
        }
    }
}
