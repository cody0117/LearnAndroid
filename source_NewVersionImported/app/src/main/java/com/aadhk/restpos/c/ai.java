// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.f.n;

// Referenced classes of package com.aadhk.restpos.c:
//            br, aj, ak

public final class ai extends br
    implements android.view.View.OnClickListener, android.widget.CompoundButton.OnCheckedChangeListener
{

    private ImageView e;
    private ImageView f;
    private Button g;
    private Button h;
    private TextView i;
    private EditText j;
    private CheckBox k;
    private Company l;
    private ak m;
    private Company n;

    public ai(Context context, Company company)
    {
        super(context, 0x7f03003f);
        setTitle(0x7f0900c1);
        l = company;
        e = (ImageView)findViewById(0x7f0b00d4);
        e.setOnClickListener(this);
        f = (ImageView)findViewById(0x7f0b00d5);
        f.setOnClickListener(this);
        g = (Button)findViewById(0x7f0b00b3);
        g.setOnClickListener(this);
        h = (Button)findViewById(0x7f0b0057);
        h.setOnClickListener(this);
        i = (TextView)findViewById(0x7f0b00e4);
        i.setOnClickListener(this);
        k = (CheckBox)findViewById(0x7f0b00e5);
        j = (EditText)findViewById(0x7f0b00c8);
        j.setSelectAllOnFocus(true);
        j.setOnClickListener(this);
        j.setOnFocusChangeListener(new aj(this));
        n = ((POSApp)c.getApplicationContext()).b();
        j.setText(com.aadhk.product.library.c.h.b(n.getServiceFee()));
        if (n.isIncludeService())
        {
            i.setText(0x7f090187);
        } else
        {
            i.setText(0x7f090188);
        }
        k.setChecked(n.isIncludeService());
        k.setOnCheckedChangeListener(this);
    }

    public final void a(ak ak1)
    {
        m = ak1;
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            i.setText(0x7f090187);
            return;
        } else
        {
            i.setText(0x7f090188);
            return;
        }
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
        if (TextUtils.isEmpty(j.getText().toString()))
        {
            j.setError(a.getString(0x7f0901f6));
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
                String s = j.getText().toString();
                l.setIncludeService(k.isChecked());
                l.setServiceFee(Integer.parseInt(s));
                ak ak1 = m;
                l;
                ak1.a();
            }
            dismiss();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (view == h)
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
