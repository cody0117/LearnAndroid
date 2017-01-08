// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.px;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            Invitation, a, Participant, ParticipantEntity, 
//            b

public final class InvitationEntity extends GamesDowngradeableSafeParcel
    implements Invitation
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    private final int a;
    private final GameEntity b;
    private final String c;
    private final long d;
    private final int e;
    private final ParticipantEntity f;
    private final ArrayList g;
    private final int h;
    private final int i;

    InvitationEntity(int l, GameEntity gameentity, String s, long l1, int i1, ParticipantEntity participantentity, 
            ArrayList arraylist, int j1, int k1)
    {
        a = l;
        b = gameentity;
        c = s;
        d = l1;
        e = i1;
        f = participantentity;
        g = arraylist;
        h = j1;
        i = k1;
    }

    InvitationEntity(Invitation invitation)
    {
        a = 2;
        b = new GameEntity(invitation.d());
        c = invitation.e();
        d = invitation.g();
        e = invitation.h();
        h = invitation.i();
        i = invitation.j();
        String s = invitation.f().k();
        Participant participant = null;
        ArrayList arraylist = invitation.k();
        int l = arraylist.size();
        g = new ArrayList(l);
        for (int i1 = 0; i1 < l; i1++)
        {
            Participant participant1 = (Participant)arraylist.get(i1);
            if (participant1.k().equals(s))
            {
                participant = participant1;
            }
            g.add((ParticipantEntity)participant1.a());
        }

        px.a(participant, "Must have a valid inviter!");
        f = (ParticipantEntity)participant.a();
    }

    static int a(Invitation invitation)
    {
        Object aobj[] = new Object[8];
        aobj[0] = invitation.d();
        aobj[1] = invitation.e();
        aobj[2] = Long.valueOf(invitation.g());
        aobj[3] = Integer.valueOf(invitation.h());
        aobj[4] = invitation.f();
        aobj[5] = invitation.k();
        aobj[6] = Integer.valueOf(invitation.i());
        aobj[7] = Integer.valueOf(invitation.j());
        return Arrays.hashCode(aobj);
    }

    static boolean a(Invitation invitation, Object obj)
    {
        if (obj instanceof Invitation)
        {
            if (invitation == obj)
            {
                return true;
            }
            Invitation invitation1 = (Invitation)obj;
            if (pt.a(invitation1.d(), invitation.d()) && pt.a(invitation1.e(), invitation.e()) && pt.a(Long.valueOf(invitation1.g()), Long.valueOf(invitation.g())) && pt.a(Integer.valueOf(invitation1.h()), Integer.valueOf(invitation.h())) && pt.a(invitation1.f(), invitation.f()) && pt.a(invitation1.k(), invitation.k()) && pt.a(Integer.valueOf(invitation1.i()), Integer.valueOf(invitation.i())) && pt.a(Integer.valueOf(invitation1.j()), Integer.valueOf(invitation.j())))
            {
                return true;
            }
        }
        return false;
    }

    static boolean a(Integer integer)
    {
        return b(integer);
    }

    static boolean a(String s)
    {
        return b(s);
    }

    static String b(Invitation invitation)
    {
        return pt.a(invitation).a("Game", invitation.d()).a("InvitationId", invitation.e()).a("CreationTimestamp", Long.valueOf(invitation.g())).a("InvitationType", Integer.valueOf(invitation.h())).a("Inviter", invitation.f()).a("Participants", invitation.k()).a("Variant", Integer.valueOf(invitation.i())).a("AvailableAutoMatchSlots", Integer.valueOf(invitation.j())).toString();
    }

    static Integer c()
    {
        return B();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final int b()
    {
        return a;
    }

    public final Game d()
    {
        return b;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return c;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final Participant f()
    {
        return f;
    }

    public final long g()
    {
        return d;
    }

    public final int h()
    {
        return e;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final int i()
    {
        return h;
    }

    public final int j()
    {
        return i;
    }

    public final ArrayList k()
    {
        return new ArrayList(g);
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int l)
    {
        if (!C())
        {
            com.google.android.gms.games.multiplayer.b.a(this, parcel, l);
        } else
        {
            b.writeToParcel(parcel, l);
            parcel.writeString(c);
            parcel.writeLong(d);
            parcel.writeInt(e);
            f.writeToParcel(parcel, l);
            int i1 = g.size();
            parcel.writeInt(i1);
            int j1 = 0;
            while (j1 < i1) 
            {
                ((ParticipantEntity)g.get(j1)).writeToParcel(parcel, l);
                j1++;
            }
        }
    }

}
