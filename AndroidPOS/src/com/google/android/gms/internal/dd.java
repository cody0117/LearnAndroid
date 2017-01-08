// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, ey, ev, ez, 
//            mg

public final class dd
    implements cz
{

    static final Map a;

    public dd()
    {
    }

    public final void a(mg mg, Map map)
    {
        String s = (String)map.get("a");
        switch (((Integer)a.get(s)).intValue())
        {
        case 2: // '\002'
        default:
            return;

        case 1: // '\001'
            (new ey(mg, map)).a();
            return;

        case 4: // '\004'
            (new ev(mg, map)).a();
            return;

        case 3: // '\003'
            (new ez(mg, map)).a();
            return;
        }
    }

    static 
    {
        HashMap hashmap = new HashMap();
        a = hashmap;
        hashmap.put("resize", Integer.valueOf(1));
        a.put("playVideo", Integer.valueOf(2));
        a.put("storePicture", Integer.valueOf(3));
        a.put("createCalendarEvent", Integer.valueOf(4));
    }
}
