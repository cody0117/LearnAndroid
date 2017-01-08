// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.g.ad;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            az, bb

public final class ay extends e
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private GridView j;
    private bb k;
    private List l;
    private OrderItem m;

    public ay(Context context, OrderItem orderitem, ad ad1)
    {
        super(context, 0x7f030051);
        m = orderitem;
        l = new ArrayList();
        i = (EditText)findViewById(0x7f090121);
        j = (GridView)findViewById(0x7f090122);
        f = (Button)findViewById(0x7f0900db);
        g = (Button)findViewById(0x7f090123);
        h = (Button)findViewById(0x7f09005b);
        l.clear();
        if (!TextUtils.isEmpty(m.getKitchenNoteGroupId()))
        {
            String as[] = m.getKitchenNoteGroupId().split("\\,");
            int i1 = as.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                String s = as[j1];
                l.addAll(ad1.a(com.aadhk.product.library.c.h.e(s)));
            }

        }
        i.setText(m.getRemark());
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        j.setOnItemClickListener(this);
        j.setAdapter(new az(this, context));
    }

    static List a(ay ay1)
    {
        return ay1.l;
    }

    public final void a(bb bb1)
    {
        k = bb1;
    }

    public final void onClick(View view)
    {
        if (view == f)
        {
            if (k != null)
            {
                k.a(i.getText().toString());
                dismiss();
            }
        } else
        {
            if (view == g)
            {
                i.setText("");
                return;
            }
            if (view == h)
            {
                dismiss();
                return;
            }
        }
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        if (!i.getText().toString().equals(""))
        {
            i.setText((new StringBuilder()).append(i.getText().toString()).append(", ").append((String)l.get(i1)).toString());
        } else
        {
            i.setText((CharSequence)l.get(i1));
        }
        i.setSelection(i.length());
        i.requestFocus();
    }
}
