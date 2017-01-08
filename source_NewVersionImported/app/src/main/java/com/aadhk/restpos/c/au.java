// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.x;
import com.aadhk.restpos.bean.User;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.c:
//            br, av, aw

public final class au extends br
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private EditText g;
    private EditText h;
    private String i;
    private String j;
    private aw k;
    private String l;

    public au(Context context)
    {
        super(context, 0x7f030046);
        setTitle(0x7f0900fd);
        f = (Button)findViewById(0x7f0b0057);
        f.setOnClickListener(this);
        e = (Button)findViewById(0x7f0b00b3);
        e.setOnClickListener(this);
        g = (EditText)findViewById(0x7f0b00f1);
        h = (EditText)findViewById(0x7f0b00f2);
        g.setText(i);
        h.setText(j);
        g.setOnFocusChangeListener(new av(this));
    }

    private boolean a()
    {
        User user;
        i = g.getText().toString();
        if (i.equals(""))
        {
            g.setError(a.getString(0x7f090055));
            g.requestFocus();
            return false;
        }
        j = h.getText().toString();
        if (j.equals(""))
        {
            h.setError(a.getString(0x7f090055));
            h.requestFocus();
            return false;
        }
        user = (new x(com.aadhk.restpos.b.f.a().b())).a(i);
        com.aadhk.restpos.b.f.a().c();
        if (user == null)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        l = user.getAccount();
        if (user.getRole() != 1)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        if (user.getPassword().equals(j))
        {
            return true;
        }
        try
        {
            h.setError(a.getString(0x7f090211));
            h.requestFocus();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return false;
        }
        return false;
        g.setError(a.getString(0x7f090210));
        g.requestFocus();
        return false;
        g.setError(a.getString(0x7f090210));
        g.requestFocus();
        return false;
    }

    public final void a(aw aw1)
    {
        k = aw1;
    }

    public final void onClick(View view)
    {
        if (view == e && a())
        {
            if (k != null)
            {
                aw aw1 = k;
                String _tmp = l;
                aw1.a();
            }
            dismiss();
        } else
        if (view == f)
        {
            dismiss();
            return;
        }
    }
}
