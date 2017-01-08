// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.event:
//            Event, a

public final class EventEntity
    implements SafeParcelable, Event
{

    public static final a CREATOR = new a();
    private final int a;
    private final String b;
    private final String c;
    private final String d;
    private final Uri e;
    private final String f;
    private final PlayerEntity g;
    private final long h;
    private final String i;
    private final boolean j;

    EventEntity(int l, String s, String s1, String s2, Uri uri, String s3, Player player, 
            long l1, String s4, boolean flag)
    {
        a = l;
        b = s;
        c = s1;
        d = s2;
        e = uri;
        f = s3;
        g = new PlayerEntity(player);
        h = l1;
        i = s4;
        j = flag;
    }

    public EventEntity(Event event)
    {
        a = 1;
        b = event.j_();
        c = event.c();
        d = event.d();
        e = event.e();
        f = event.f();
        g = (PlayerEntity)event.g().a();
        h = event.h();
        i = event.i();
        j = event.j();
    }

    static int a(Event event)
    {
        Object aobj[] = new Object[9];
        aobj[0] = event.j_();
        aobj[1] = event.c();
        aobj[2] = event.d();
        aobj[3] = event.e();
        aobj[4] = event.f();
        aobj[5] = event.g();
        aobj[6] = Long.valueOf(event.h());
        aobj[7] = event.i();
        aobj[8] = Boolean.valueOf(event.j());
        return Arrays.hashCode(aobj);
    }

    static boolean a(Event event, Object obj)
    {
        if (obj instanceof Event)
        {
            if (event == obj)
            {
                return true;
            }
            Event event1 = (Event)obj;
            if (pt.a(event1.j_(), event.j_()) && pt.a(event1.c(), event.c()) && pt.a(event1.d(), event.d()) && pt.a(event1.e(), event.e()) && pt.a(event1.f(), event.f()) && pt.a(event1.g(), event.g()) && pt.a(Long.valueOf(event1.h()), Long.valueOf(event.h())) && pt.a(event1.i(), event.i()) && pt.a(Boolean.valueOf(event1.j()), Boolean.valueOf(event.j())))
            {
                return true;
            }
        }
        return false;
    }

    static String b(Event event)
    {
        return pt.a(event).a("Id", event.j_()).a("Name", event.c()).a("Description", event.d()).a("IconImageUri", event.e()).a("IconImageUrl", event.f()).a("Player", event.g()).a("Value", Long.valueOf(event.h())).a("FormattedValue", event.i()).a("isVisible", Boolean.valueOf(event.j())).toString();
    }

    public final volatile Object a()
    {
        return this;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Uri e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public final String f()
    {
        return f;
    }

    public final Player g()
    {
        return g;
    }

    public final long h()
    {
        return h;
    }

    public final int hashCode()
    {
        return a(this);
    }

    public final String i()
    {
        return i;
    }

    public final boolean j()
    {
        return j;
    }

    public final String j_()
    {
        return b;
    }

    public final int k()
    {
        return a;
    }

    public final String toString()
    {
        return b(this);
    }

    public final void writeToParcel(Parcel parcel, int l)
    {
        com.google.android.gms.games.event.a.a(this, parcel, l);
    }

}
