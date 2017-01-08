// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

// Referenced classes of package com.google.android.gms.games.quest:
//            Milestone, MilestoneEntity

public final class MilestoneRef extends f
    implements Milestone
{

    MilestoneRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    private Milestone h()
    {
        return new MilestoneEntity(this);
    }

    public final Object a()
    {
        return h();
    }

    public final long c()
    {
        switch (c("milestone_state"))
        {
        case 1: // '\001'
        default:
            return 0L;

        case 3: // '\003'
        case 4: // '\004'
            return b("target_value");

        case 2: // '\002'
            return b("current_value") - b("initial_value");
        }
    }

    public final String d()
    {
        return e("external_event_id");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final int e()
    {
        return c("milestone_state");
    }

    public final boolean equals(Object obj)
    {
        return MilestoneEntity.a(this, obj);
    }

    public final long f()
    {
        return b("target_value");
    }

    public final byte[] g()
    {
        return g("completion_reward_data");
    }

    public final int hashCode()
    {
        return MilestoneEntity.a(this);
    }

    public final String q_()
    {
        return e("external_milestone_id");
    }

    public final String toString()
    {
        return MilestoneEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        ((MilestoneEntity)h()).writeToParcel(parcel, i);
    }
}
