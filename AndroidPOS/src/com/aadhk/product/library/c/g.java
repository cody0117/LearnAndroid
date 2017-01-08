// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class g
    implements FileFilter
{

    final Pattern a;

    g(Pattern pattern)
    {
        a = pattern;
        super();
    }

    public final boolean accept(File file)
    {
        return a.matcher(file.getName()).matches();
    }
}
