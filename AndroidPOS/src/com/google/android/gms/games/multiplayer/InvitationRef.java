// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.data.f;
import com.google.android.gms.games.Game;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            Invitation, InvitationEntity, ParticipantRef, Participant

public final class InvitationRef extends f
    implements Invitation
{

    private final Game c;
    private final ParticipantRef d;
    private final ArrayList e;

    private Invitation c()
    {
        return new InvitationEntity(this);
    }

    public final Object a()
    {
        return c();
    }

    public final Game d()
    {
        return c;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return e("external_invitation_id");
    }

    public final boolean equals(Object obj)
    {
        return InvitationEntity.a(this, obj);
    }

    public final Participant f()
    {
        return d;
    }

    public final long g()
    {
        return Math.max(b("creation_timestamp"), b("last_modified_timestamp"));
    }

    public final int h()
    {
        return c("type");
    }

    public final int hashCode()
    {
        return InvitationEntity.a(this);
    }

    public final int i()
    {
        return c("variant");
    }

    public final int j()
    {
        if (!d("has_automatch_criteria"))
        {
            return 0;
        } else
        {
            return c("automatch_max_players");
        }
    }

    public final ArrayList k()
    {
        return e;
    }

    public final String toString()
    {
        return InvitationEntity.b(this);
    }

    public final void writeToParcel(Parcel parcel, int l)
    {
        ((InvitationEntity)c()).writeToParcel(parcel, l);
    }
}
