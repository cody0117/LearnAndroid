// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.internal.oo;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.internal.multiplayer:
//            a

public final class ZInvitationCluster
    implements SafeParcelable, Invitation
{

    public static final a CREATOR = new a();
    private final int a;
    private final ArrayList b;

    ZInvitationCluster(int i1, ArrayList arraylist)
    {
        a = i1;
        b = arraylist;
        l();
    }

    private void l()
    {
        boolean flag;
        Invitation invitation;
        int i1;
        if (!b.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oo.a(flag);
        invitation = (Invitation)b.get(0);
        i1 = b.size();
        for (int j1 = 1; j1 < i1; j1++)
        {
            Invitation invitation1 = (Invitation)b.get(j1);
            oo.a(invitation.f().equals(invitation1.f()), "All the invitations must be from the same inviter");
        }

    }

    public final volatile Object a()
    {
        return this;
    }

    public final int b()
    {
        return a;
    }

    public final ArrayList c()
    {
        return new ArrayList(b);
    }

    public final Game d()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return ((InvitationEntity)b.get(0)).e();
    }

    public final boolean equals(Object obj)
    {
        if (!(obj instanceof ZInvitationCluster))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        ZInvitationCluster zinvitationcluster = (ZInvitationCluster)obj;
        if (zinvitationcluster.b.size() != b.size())
        {
            return false;
        }
        int i1 = b.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            if (!((Invitation)b.get(j1)).equals((Invitation)zinvitationcluster.b.get(j1)))
            {
                return false;
            }
        }

        return true;
    }

    public final Participant f()
    {
        return ((InvitationEntity)b.get(0)).f();
    }

    public final long g()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public final int h()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public final int hashCode()
    {
        return Arrays.hashCode(b.toArray());
    }

    public final int i()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public final int j()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public final ArrayList k()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        com.google.android.gms.games.internal.multiplayer.a.a(this, parcel);
    }

}
