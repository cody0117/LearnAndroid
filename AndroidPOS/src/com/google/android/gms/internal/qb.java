// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;

public final class qb
{

    public static String a(String s, String s1, Context context, AttributeSet attributeset)
    {
        String s2;
        TypedValue typedvalue;
label0:
        {
            if (attributeset == null)
            {
                s2 = null;
            } else
            {
                s2 = attributeset.getAttributeValue(s, s1);
            }
            if (s2 != null && s2.startsWith("@string/"))
            {
                String s3 = s2.substring(8);
                String s4 = context.getPackageName();
                typedvalue = new TypedValue();
                try
                {
                    context.getResources().getValue((new StringBuilder()).append(s4).append(":string/").append(s3).toString(), typedvalue, true);
                }
                catch (android.content.res.Resources.NotFoundException notfoundexception)
                {
                    (new StringBuilder("Could not find resource for ")).append(s1).append(": ").append(s2);
                }
                if (typedvalue.string == null)
                {
                    break label0;
                }
                s2 = typedvalue.string.toString();
            }
            return s2;
        }
        (new StringBuilder("Resource ")).append(s1).append(" was not a string: ").append(typedvalue);
        return s2;
    }
}
