// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.Button;

// Referenced classes of package com.google.android.gms.internal:
//            px

public final class jz extends Button
{

    public jz(Context context)
    {
        this(context, null);
    }

    public jz(Context context, AttributeSet attributeset)
    {
        super(context, attributeset, 0x1010048);
    }

    private static int a(int i, int j, int k)
    {
        switch (i)
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown color scheme: ")).append(i).toString());

        case 1: // '\001'
            j = k;
            // fall through

        case 0: // '\0'
            return j;
        }
    }

    public final void a(Resources resources, int i, int j)
    {
        boolean flag;
        Object aobj[];
        boolean flag1;
        Object aobj1[];
        float f;
        if (i >= 0 && i < 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(i);
        px.a(flag, "Unknown button size %d", aobj);
        if (j >= 0 && j < 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        aobj1 = new Object[1];
        aobj1[0] = Integer.valueOf(j);
        px.a(flag1, "Unknown color scheme %s", aobj1);
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14F);
        f = resources.getDisplayMetrics().density;
        setMinHeight((int)(0.5F + f * 48F));
        setMinWidth((int)(0.5F + f * 48F));
        i;
        JVM INSTR tableswitch 0 2: default 144
    //                   0 180
    //                   1 180
    //                   2 208;
           goto _L1 _L2 _L2 _L3
_L1:
        throw new IllegalStateException((new StringBuilder("Unknown button size: ")).append(i).toString());
_L2:
        int k = a(j, com.google.android.gms.R.drawable.common_signin_btn_text_dark, com.google.android.gms.R.drawable.common_signin_btn_text_light);
_L5:
        if (k == -1)
        {
            throw new IllegalStateException("Could not find background resource!");
        }
        break; /* Loop/switch isn't completed */
_L3:
        k = a(j, com.google.android.gms.R.drawable.common_signin_btn_icon_dark, com.google.android.gms.R.drawable.common_signin_btn_icon_light);
        if (true) goto _L5; else goto _L4
_L4:
        setBackgroundDrawable(resources.getDrawable(k));
        setTextColor(resources.getColorStateList(a(j, com.google.android.gms.R.color.common_signin_btn_text_dark, com.google.android.gms.R.color.common_signin_btn_text_light)));
        switch (i)
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown button size: ")).append(i).toString());

        case 0: // '\0'
            setText(resources.getString(com.google.android.gms.R.string.common_signin_button_text));
            return;

        case 1: // '\001'
            setText(resources.getString(com.google.android.gms.R.string.common_signin_button_text_long));
            return;

        case 2: // '\002'
            setText(null);
            break;
        }
        return;
    }
}
