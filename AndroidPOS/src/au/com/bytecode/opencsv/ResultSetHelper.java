// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package au.com.bytecode.opencsv;

import java.sql.ResultSet;

public interface ResultSetHelper
{

    public abstract String[] getColumnNames(ResultSet resultset);

    public abstract String[] getColumnValues(ResultSet resultset);
}
