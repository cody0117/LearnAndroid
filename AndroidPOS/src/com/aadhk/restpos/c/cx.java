// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.KitchenNote;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            cy

public final class cx extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private GridView f;
    private Button g;
    private Button h;
    private MgrItemActivity i;
    private List j;
    private List k;

    public cx(MgrItemActivity mgritemactivity, Item item)
    {
        super(mgritemactivity, 0x7f030065);
        i = mgritemactivity;
        j = mgritemactivity.e();
        k = new ArrayList();
        if (item != null)
        {
            String s = item.getKitchenNoteGroupIds();
            if (s != null && !"".equals(s))
            {
                String as[] = s.split("\\,");
                for (Iterator iterator = j.iterator(); iterator.hasNext();)
                {
                    KitchenNote kitchennote = (KitchenNote)iterator.next();
                    int l = 0;
                    while (l < as.length) 
                    {
                        if (Integer.parseInt(as[l].trim()) == kitchennote.getId())
                        {
                            k.add(kitchennote);
                        }
                        l++;
                    }
                }

            }
        }
        f = (GridView)findViewById(0x7f090163);
        f.setOnItemClickListener(this);
        f.setAdapter(new cy(this, (byte)0));
        g = (Button)findViewById(0x7f0900db);
        h = (Button)findViewById(0x7f09005b);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
    }

    static List a(cx cx1)
    {
        return cx1.j;
    }

    static MgrItemActivity b(cx cx1)
    {
        return cx1.i;
    }

    static List c(cx cx1)
    {
        return cx1.k;
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
        KitchenNote kitchennote = (KitchenNote)j.get(l);
        ImageView imageview = (ImageView)view.findViewById(0x7f09002c);
        if (imageview.getVisibility() == 8)
        {
            imageview.setVisibility(0);
            k.add(kitchennote);
            return;
        } else
        {
            imageview.setVisibility(8);
            k.remove(kitchennote);
            return;
        }
    }
}
