// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.f.m;
import com.aadhk.restpos.f.n;

// Referenced classes of package com.aadhk.restpos.c:
//            br, x, w

public final class v extends br
    implements android.view.View.OnClickListener
{

    private ImageView e;
    private ImageView f;
    private Button g;
    private Button h;
    private Button i;
    private EditText j;
    private Context k;
    private OrderItem l;
    private x m;
    private w n;
    private int o;

    public v(Context context, OrderItem orderitem, int i1)
    {
        super(context, 0x7f030039);
        setTitle(orderitem.getItemName());
        k = context;
        l = orderitem;
        o = i1;
        if (orderitem == null)
        {
            l = new OrderItem();
        }
        e = (ImageView)findViewById(0x7f0b00d4);
        e.setOnClickListener(this);
        f = (ImageView)findViewById(0x7f0b00d5);
        f.setOnClickListener(this);
        g = (Button)findViewById(0x7f0b0056);
        g.setOnClickListener(this);
        i = (Button)findViewById(0x7f0b0057);
        i.setOnClickListener(this);
        j = (EditText)findViewById(0x7f0b00d6);
        j.setSelectAllOnFocus(true);
        j.setOnClickListener(this);
        if (l.getNum() != 0)
        {
            j.setText((new StringBuilder()).append(l.getNum()).toString());
        }
    }

    public final void a(x x1)
    {
        m = x1;
    }

    public final void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        com.aadhk.restpos.f.n.a(j);
_L4:
        return;
_L2:
        if (view == f)
        {
            com.aadhk.restpos.f.n.b(j);
            return;
        }
        if (view != g)
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag;
        if (j.getText().toString().equals("") || j.getText().toString().equals("0"))
        {
            j.setError(a.getString(0x7f090055));
            j.requestFocus();
            flag = false;
        } else
        {
            j.setError(null);
            flag = true;
        }
        if (flag)
        {
            if (m != null)
            {
                l.setNum(com.aadhk.restpos.f.m.a(j.getText().toString()));
                m.a(l);
            }
            dismiss();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (view == h)
        {
            if (n != null)
            {
                n;
            }
            dismiss();
            return;
        }
        if (view == i)
        {
            dismiss();
            return;
        }
        if (view == j)
        {
            j.selectAll();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }
}
