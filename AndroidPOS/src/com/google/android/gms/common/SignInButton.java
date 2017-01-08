// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.a.i;
import com.google.android.gms.internal.jz;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.pz;

public final class SignInButton extends FrameLayout
    implements android.view.View.OnClickListener
{

    private int a;
    private int b;
    private View c;
    private android.view.View.OnClickListener d;

    public SignInButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SignInButton(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        d = null;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(0);
        px.a(true, "Unknown button size %d", aobj);
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(0);
        px.a(true, "Unknown color scheme %s", aobj1);
        a = 0;
        b = 0;
        Context context1 = getContext();
        if (c != null)
        {
            removeView(c);
        }
        try
        {
            c = pz.a(context1, a, b);
        }
        catch (i k)
        {
            int l = a;
            int i1 = b;
            jz jz1 = new jz(context1);
            jz1.a(context1.getResources(), l, i1);
            c = jz1;
        }
        addView(c);
        c.setEnabled(isEnabled());
        c.setOnClickListener(this);
    }

    public final void onClick(View view)
    {
        if (d != null && view == c)
        {
            d.onClick(this);
        }
    }

    public final void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        c.setEnabled(flag);
    }

    public final void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        d = onclicklistener;
        if (c != null)
        {
            c.setOnClickListener(this);
        }
    }
}
