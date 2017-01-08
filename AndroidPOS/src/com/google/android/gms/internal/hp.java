// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            nj, hj

public class hp
    implements SafeParcelable
{

    public static final nj CREATOR = new nj();
    final int a;
    public final String b;
    public final String c;
    public final boolean d;
    public final int e;
    public final boolean f;
    public final String g;
    public final hj h[];
    final int i[];
    public final String j;

    hp(int k, String s, String s1, boolean flag, int l, boolean flag1, String s2, 
            hj ahj[], int ai[], String s3)
    {
        a = k;
        b = s;
        c = s1;
        d = flag;
        e = l;
        f = flag1;
        g = s2;
        h = ahj;
        i = ai;
        j = s3;
    }

    hp(String s, String s1, boolean flag, int k, boolean flag1, String s2, hj ahj[], 
            int ai[], String s3)
    {
        this(2, s, s1, flag, k, flag1, s2, ahj, ai, s3);
    }

    public int describeContents()
    {
        nj _tmp = CREATOR;
        return 0;
    }

    public final boolean equals(Object obj)
    {
        boolean flag = obj instanceof hp;
        boolean flag1 = false;
        if (flag)
        {
            hp hp1 = (hp)obj;
            boolean flag2 = b.equals(hp1.b);
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = c.equals(hp1.c);
                flag1 = false;
                if (flag3)
                {
                    boolean flag4 = d;
                    boolean flag5 = hp1.d;
                    flag1 = false;
                    if (flag4 == flag5)
                    {
                        flag1 = true;
                    }
                }
            }
        }
        return flag1;
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        nj _tmp = CREATOR;
        nj.a(this, parcel, k);
    }

}
