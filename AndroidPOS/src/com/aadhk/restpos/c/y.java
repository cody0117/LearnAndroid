// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.InputFilter;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.util.g;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, z, aa

public final class y extends cs
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private EditText g;
    private double h;
    private aa i;

    public y(Context context, OrderItem orderitem, int j)
    {
        super(context, 0x7f030043);
        setTitle(orderitem.getItemName());
        h = orderitem.getItemPrice();
        e = (Button)findViewById(0x7f09005a);
        e.setOnClickListener(this);
        f = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g = (EditText)findViewById(0x7f0900f3);
        g.setText((new StringBuilder()).append(h).toString());
        EditText edittext = g;
        InputFilter ainputfilter[] = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new g(j);
        edittext.setFilters(ainputfilter);
        g.setOnFocusChangeListener(new z(this));
    }

    public final void a(aa aa1)
    {
        i = aa1;
    }

    public final void onClick(View view)
    {
        if (view == e)
        {
            boolean flag;
            if (g.getText().toString().equals(""))
            {
                g.setError(a.getString(0x7f080085));
                g.requestFocus();
                flag = false;
            } else
            {
                g.setError(null);
                flag = true;
            }
            if (flag && i != null)
            {
                aa aa1 = i;
                String s = g.getText().toString();
                double d = 0.0D;
                if (s != null && !"".equals(s))
                {
                    d = Double.parseDouble(s);
                }
                aa1.a(d);
                dismiss();
            }
        } else
        if (view == f)
        {
            dismiss();
            return;
        }
    }
}
