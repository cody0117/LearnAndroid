// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.quest:
//            Milestone, a

public final class MilestoneEntity
    implements SafeParcelable, Milestone
{

    public static final a CREATOR = new a();
    private final int a;
    private final String b;
    private final long c;
    private final long d;
    private final byte e[];
    private final int f;
    private final String g;

    MilestoneEntity(int i, String s, long l, long l1, byte abyte0[], 
            int j, String s1)
    {
        a = i;
        b = s;
        c = l;
        d = l1;
        e = abyte0;
        f = j;
        g = s1;
    }

    public MilestoneEntity(Milestone milestone)
    {
        a = 4;
        b = milestone.q_();
        c = milestone.c();
        d = milestone.f();
        f = milestone.e();
        g = milestone.d();
        byte abyte0[] = milestone.g();
        if (abyte0 == null)
        {
            e = null;
            return;
        } else
        {
            e = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, e, 0, abyte0.length);
            return;
        }
    }

    static int a(Milestone milestone)
    {
        Object aobj[] = new Object[5];
        aobj[0] = milestone.q_();
        aobj[1] = Long.valueOf(milestone.c());
        aobj[2] = Long.valueOf(milestone.f());
        aobj[3] = Integer.valueOf(milestone.e());
        aobj[4] = milestone.d();
        return Arrays.hashCode(aobj);
    }

    static boolean a(Milestone milestone, Object obj)
    {
        if (obj instanceof Milestone)
        {
            if (milestone == obj)
            {
                return true;
            }
            Milestone milestone1 = (Milestone)obj;
            if (pt.a(milestone1.q_(), milestone.q_()) && pt.a(Long.valueOf(milestone1.c()), Long.valueOf(milestone.c())) && pt.a(Long.valueOf(milestone1.f()), Long.valueOf(milestone.f())) && pt.a(Integer.valueOf(milestone1.e()), Integer.valueOf(milestone.e())) && pt.a(milestone1.d(), milestone.d()))
            {
                return true;
            }
        }
        return false;
    }

    static String b(Milestone milestone)
    {
        return pt.a(milestone).a("MilestoneId", milestone.q_()).a("CurrentProgress", Long.valueOf(milestone.c())).a("TargetProgress", Long.valueOf(milestone.f())).a("State", Integer.valueOf(milestone.e())).a("CompletionRewardData", milestone.g()).a("EventId", milestone.d()).toString();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final long c()
    {
        return c;
    }

    public final String d()
    {
        return g;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final int e()
    {
        return f;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final long f()
    {
        return d;
    }

    public final byte[] g()
    {
        return e;
    }

    public final int h()
    {
        return a;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String q_()
    {
        return b;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.quest.a.a(this, parcel);
    }

}
