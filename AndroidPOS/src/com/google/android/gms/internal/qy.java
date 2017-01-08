// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.drive.metadata.a;
import com.google.android.gms.drive.metadata.g;
import com.google.android.gms.drive.metadata.internal.c;
import com.google.android.gms.drive.metadata.internal.h;
import com.google.android.gms.drive.metadata.internal.l;
import com.google.android.gms.drive.metadata.internal.m;
import com.google.android.gms.drive.metadata.internal.n;
import java.util.Collections;

// Referenced classes of package com.google.android.gms.internal:
//            rp, ra, rb, rc, 
//            rd, re, rf, qz, 
//            rg, rh

public final class qy
{

    public static final rg A = new rg("title");
    public static final rh B = new rh("trashed");
    public static final a C = new m("webContentLink", 0x419ce0);
    public static final a D = new m("webViewLink", 0x419ce0);
    public static final a E = new m("uniqueIdentifier", 0x4c4b40);
    public static final c F = new c("writersCanShare", 0x5b8d80);
    public static final a G = new m("role", 0x5b8d80);
    public static final a a;
    public static final a b = new m("alternateLink", 0x419ce0);
    public static final ra c = new ra();
    public static final a d = new m("description", 0x419ce0);
    public static final a e = new m("embedLink", 0x419ce0);
    public static final a f = new m("fileExtension", 0x419ce0);
    public static final a g = new h("fileSize");
    public static final a h = new c("hasThumbnail", 0x419ce0);
    public static final a i = new m("indexableText", 0x419ce0);
    public static final a j = new c("isAppData", 0x419ce0);
    public static final a k = new c("isCopyable", 0x419ce0);
    public static final a l = new c("isEditable", 0x3e8fa0);
    public static final rb m = new rb("isPinned");
    public static final a n = new c("isRestricted", 0x419ce0);
    public static final a o = new c("isShared", 0x419ce0);
    public static final a p = new c("isTrashable", 0x432380);
    public static final a q = new c("isViewed", 0x419ce0);
    public static final rc r = new rc("mimeType");
    public static final a s = new m("originalFilename", 0x419ce0);
    public static final g t = new l("ownerNames");
    public static final n u = new n("lastModifyingUser");
    public static final n v = new n("sharingUser");
    public static final rd w = new rd("parents");
    public static final re x = new re("quotaBytesUsed");
    public static final rf y = new rf("starred");
    public static final a z = new qz("thumbnail", Collections.emptySet(), Collections.emptySet());

    static 
    {
        a = com.google.android.gms.internal.rp.a;
    }
}
