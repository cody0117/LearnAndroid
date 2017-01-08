// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bugsense.trace;

import java.io.File;
import java.io.FilenameFilter;

class this._cls1
    implements FilenameFilter
{

    final this._cls1 this$1;

    public boolean accept(File file, String s)
    {
        return s.startsWith("Crash_");
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
