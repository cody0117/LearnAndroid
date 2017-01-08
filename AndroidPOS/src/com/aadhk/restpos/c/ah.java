// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import com.aadhk.product.library.b.e;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.bean.TableGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            ai

public final class ah extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private Button g;
    private Button h;
    private EditText i;
    private Spinner j;
    private CharSequence k;
    private LayoutInflater l;
    private List m;
    private Table n;

    public ah(Context context, Table table, List list)
    {
        int i1 = 0;
        super(context, 0x7f030045);
        n = table;
        m = list;
        l = LayoutInflater.from(context);
        f = (Button)findViewById(0x7f09005a);
        g = (Button)findViewById(0x7f09005b);
        i = (EditText)findViewById(0x7f0900da);
        j = (Spinner)findViewById(0x7f09007d);
        j.setAdapter(new ai(this, (byte)0));
        findViewById(0x7f09007c).setVisibility(8);
        f.setOnClickListener(this);
        g.setOnClickListener(this);
        if (n != null)
        {
            i.setText(n.getName());
            for (; i1 < list.size(); i1++)
            {
                if (((TableGroup)list.get(i1)).getTableGroupId() == n.getTableGroupId())
                {
                    j.setSelection(i1);
                }
            }

        } else
        {
            n = new Table();
        }
        k = c.getString(0x7f080085);
    }

    static List a(ah ah1)
    {
        return ah1.m;
    }

    static LayoutInflater b(ah ah1)
    {
        return ah1.l;
    }

    public final void b()
    {
        h = (Button)findViewById(0x7f0900dc);
        h.setOnClickListener(this);
        h.setVisibility(0);
    }

    public final void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        if (!"".equals(i.getText().toString())) goto _L4; else goto _L3
_L3:
        i.setError(k);
_L6:
        return;
_L4:
        if (a != null)
        {
            n.setName(i.getText().toString());
            n.setTableGroupId(((TableGroup)m.get(j.getSelectedItemPosition())).getTableGroupId());
            a.a(n);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == g)
        {
            dismiss();
            return;
        }
        if (view == h && b != null)
        {
            b.a();
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
