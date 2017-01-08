// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.Game;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.quest:
//            Quest, QuestEntity, MilestoneRef

public final class QuestRef extends f
    implements Quest
{

    private final Game c;
    private final int d;

    private Quest r()
    {
        return new QuestEntity(this);
    }

    public final Object a()
    {
        return r();
    }

    public final String c()
    {
        return e("quest_name");
    }

    public final String d()
    {
        return e("quest_description");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return h("quest_banner_image_uri");
    }

    public final boolean equals(Object obj)
    {
        return QuestEntity.a(this, obj);
    }

    public final String f()
    {
        return e("quest_banner_image_url");
    }

    public final Uri g()
    {
        return h("quest_icon_image_uri");
    }

    public final String h()
    {
        return e("quest_icon_image_url");
    }

    public final int hashCode()
    {
        return QuestEntity.a(this);
    }

    public final List i()
    {
        ArrayList arraylist = new ArrayList(d);
        for (int i1 = 0; i1 < d; i1++)
        {
            arraylist.add(new MilestoneRef(a, i1 + b));
        }

        return arraylist;
    }

    public final Game j()
    {
        return c;
    }

    public final int k()
    {
        return c("quest_state");
    }

    public final int l()
    {
        return c("quest_type");
    }

    public final long m()
    {
        return b("accepted_ts");
    }

    public final long n()
    {
        return b("quest_end_ts");
    }

    public final long o()
    {
        return b("quest_last_updated_ts");
    }

    public final long p()
    {
        return b("notification_ts");
    }

    public final long q()
    {
        return b("quest_start_ts");
    }

    public final String r_()
    {
        return e("external_quest_id");
    }

    public final String toString()
    {
        return QuestEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        ((QuestEntity)r()).writeToParcel(parcel, i1);
    }
}
