// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package au.com.bytecode.opencsv.bean;

import au.com.bytecode.opencsv.CSVReader;
import java.beans.PropertyDescriptor;

public interface MappingStrategy
{

    public abstract void captureHeader(CSVReader csvreader);

    public abstract Object createBean();

    public abstract PropertyDescriptor findDescriptor(int i);
}
