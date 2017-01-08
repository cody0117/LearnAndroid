// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.aadhk.restpos.a.ax;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.util.w;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, dt

public final class ds extends cs
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private Button e;
    private Button f;
    private ImageButton g;
    private ImageButton h;
    private ListView i;
    private dt j;
    private List k;
    private EditText l;
    private EditText m;
    private LinearLayout n;
    private OrderItem o;

    public ds(Context context, List list, OrderItem orderitem)
    {
        super(context, 0x7f03006f);
        o = orderitem;
        k = list;
        e = (Button)findViewById(0x7f0900db);
        f = (Button)findViewById(0x7f09005b);
        m = (EditText)findViewById(0x7f09010b);
        l = (EditText)findViewById(0x7f0900fa);
        g = (ImageButton)findViewById(0x7f0900f4);
        h = (ImageButton)findViewById(0x7f0900f5);
        n = (LinearLayout)findViewById(0x7f09011f);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        h.setOnClickListener(this);
        if (!orderitem.getOrderModifiers().isEmpty() || orderitem.getQty() == 1)
        {
            n.setVisibility(8);
        } else
        {
            n.setVisibility(0);
        }
        l.setText((new StringBuilder()).append(orderitem.getQty()).toString());
        m.setText(orderitem.getCancelReason());
        i = (ListView)findViewById(0x7f09016d);
        i.setOnItemClickListener(this);
        i.setAdapter(new ax(c, k));
    }

    public final void a(dt dt1)
    {
        j = dt1;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view != g) goto _L2; else goto _L1
_L1:
        w.a(l);
_L4:
        return;
_L2:
        if (view == h)
        {
            w.b(l);
            return;
        }
        if (view != e)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s = m.getText().toString();
        String s1 = l.getText().toString();
        if (o.getQty() > 1 && TextUtils.isEmpty(s1))
        {
            l.setError(a.getString(0x7f080085));
        } else
        if (!TextUtils.isEmpty(s1) && Integer.parseInt(s1) > o.getQty())
        {
            l.setError(a.getString(0x7f080088));
            flag = false;
        } else
        if (TextUtils.isEmpty(s))
        {
            l.setError(null);
            m.setError(a.getString(0x7f080085));
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag || j == null) goto _L4; else goto _L3
_L3:
        j.a(s, s1);
        dismiss();
        return;
        if (view != f) goto _L4; else goto _L5
_L5:
        dismiss();
        return;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        m.setText(((Note)k.get(i1)).getName());
    }
}
