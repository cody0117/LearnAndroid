// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            fd

public final class fc
{

    private final boolean a;
    private final boolean b;
    private final boolean c;
    private final boolean d;
    private final boolean e;

    private fc(fd fd1)
    {
        a = fd.a(fd1);
        b = fd.b(fd1);
        c = fd.c(fd1);
        d = fd.d(fd1);
        e = fd.e(fd1);
    }

    fc(fd fd1, byte byte0)
    {
        this(fd1);
    }

    public final JSONObject a()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = (new JSONObject()).put("sms", a).put("tel", b).put("calendar", c).put("storePicture", d).put("inlineVideo", e);
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return jsonobject;
    }
}
