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
import android.widget.ListView;
import com.aadhk.restpos.a.ao;
import com.aadhk.restpos.bean.Note;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            br, ca

public final class bz extends br
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private Button e;
    private Button f;
    private ListView g;
    private ca h;
    private List i;
    private EditText j;

    public bz(Context context, String s, List list)
    {
        super(context, 0x7f030058);
        i = list;
        e = (Button)findViewById(0x7f0b00b3);
        f = (Button)findViewById(0x7f0b0057);
        j = (EditText)findViewById(0x7f0b00d7);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        j.setText(s);
        g = (ListView)findViewById(0x7f0b0121);
        g.setOnItemClickListener(this);
        g.setAdapter(new ao(c, i));
    }

    public final void a(ca ca1)
    {
        h = ca1;
    }

    public final void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        String s = j.getText().toString();
        if (!TextUtils.isEmpty(s)) goto _L4; else goto _L3
_L3:
        j.setError(a.getString(0x7f090055));
_L6:
        return;
_L4:
        if (h != null)
        {
            h.a(s);
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == f)
        {
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onItemClick(AdapterView adapterview, View view, int k, long l)
    {
        j.setText(((Note)i.get(k)).getName());
    }
}
