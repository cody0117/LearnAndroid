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
import com.aadhk.restpos.a.ax;
import com.aadhk.restpos.bean.Note;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, dv

public final class du extends cs
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private Button e;
    private Button f;
    private ListView g;
    private dv h;
    private List i;
    private EditText j;

    public du(Context context, List list)
    {
        super(context, 0x7f030070);
        i = list;
        e = (Button)findViewById(0x7f0900db);
        f = (Button)findViewById(0x7f09005b);
        j = (EditText)findViewById(0x7f09010b);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        j.setText(null);
        g = (ListView)findViewById(0x7f09016d);
        g.setOnItemClickListener(this);
        g.setAdapter(new ax(c, i));
    }

    public final void a(dv dv1)
    {
        h = dv1;
    }

    public final void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        String s = j.getText().toString();
        if (!TextUtils.isEmpty(s)) goto _L4; else goto _L3
_L3:
        j.setError(a.getString(0x7f080085));
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
