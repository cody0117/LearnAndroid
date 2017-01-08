// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import au.com.bytecode.opencsv.CSVWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.List;

public final class d
{

    public static void a(String s, String as[], List list)
    {
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        fileoutputstream.write(239);
        fileoutputstream.write(187);
        fileoutputstream.write(191);
        CSVWriter csvwriter = new CSVWriter(new OutputStreamWriter(fileoutputstream));
        csvwriter.writeNext(as);
        csvwriter.writeAll(list);
        csvwriter.close();
    }
}
