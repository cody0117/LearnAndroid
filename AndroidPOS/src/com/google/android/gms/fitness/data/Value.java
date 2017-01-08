// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.px;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.fitness.data:
//            w

public final class Value
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new w();
    private final int a;
    private final int b;
    private boolean c;
    private float d;

    Value(int i, int j, boolean flag, float f1)
    {
        a = i;
        b = j;
        c = flag;
        d = f1;
    }

    private int e()
    {
        boolean flag = true;
        if (b != flag)
        {
            flag = false;
        }
        px.a(flag, "Value is not in int format");
        return Float.floatToRawIntBits(d);
    }

    private float f()
    {
        boolean flag;
        if (b == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        px.a(flag, "Value is not in float format");
        return d;
    }

    public final boolean a()
    {
        return c;
    }

    public final int b()
    {
        return b;
    }

    final int c()
    {
        return a;
    }

    final float d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this == obj) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1;
        flag1 = obj instanceof Value;
        flag = false;
        if (!flag1) goto _L4; else goto _L3
_L3:
        Value value = (Value)obj;
        if (b != value.b || c != value.c) goto _L6; else goto _L5
_L5:
        b;
        JVM INSTR tableswitch 1 2: default 72
    //                   1 99
    //                   2 123;
           goto _L7 _L8 _L9
_L7:
        boolean flag2;
        if (d == value.d)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
_L11:
        flag = false;
        if (!flag2) goto _L4; else goto _L2
_L2:
        flag = true;
_L4:
        return flag;
_L8:
        if (e() == value.e())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (f() == value.f())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        flag2 = false;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Float.valueOf(d);
        aobj[1] = Integer.valueOf(b);
        aobj[2] = Boolean.valueOf(c);
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        if (!c)
        {
            return "unset";
        }
        switch (b)
        {
        default:
            return "unknown";

        case 1: // '\001'
            return Integer.toString(e());

        case 2: // '\002'
            return Float.toString(f());
        }
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        w.a(this, parcel);
    }

}
