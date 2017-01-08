// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            q, ay, mg, me, 
//            lq, z, mi, tz, 
//            x, w, gs, r, 
//            tr, fp, co, fu, 
//            da, cz

public final class v
    implements q
{

    private final mg a;

    public v(Context context, gs gs)
    {
        a = mg.a(context, new ay(), false, false, null, gs);
    }

    static mg a(v v1)
    {
        return v1.a;
    }

    private static void a(Runnable runnable)
    {
        if (me.b())
        {
            runnable.run();
            return;
        } else
        {
            me.a.post(runnable);
            return;
        }
    }

    public final void a()
    {
        lq.a(a);
    }

    public final void a(r r)
    {
        a.f().a(new z(this, r));
    }

    public final void a(tr tr, fp fp, co co, fu fu, da da)
    {
        a.f().a(tr, fp, co, fu, false, da, new tz((byte)0));
    }

    public final void a(String s)
    {
        a(((Runnable) (new x(this, s))));
    }

    public final void a(String s, cz cz)
    {
        a.f().a(s, cz);
    }

    public final void a(String s, JSONObject jsonobject)
    {
        a(((Runnable) (new w(this, s, jsonobject))));
    }

    public final void b()
    {
        lq.b(a);
    }

    public final void b(String s)
    {
        a.f().a(s, null);
    }

    public final void c()
    {
        a.destroy();
    }
}
