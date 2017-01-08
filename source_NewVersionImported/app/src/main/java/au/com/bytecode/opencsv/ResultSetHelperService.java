// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package au.com.bytecode.opencsv;

import java.io.Reader;
import java.math.BigDecimal;
import java.sql.Clob;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package au.com.bytecode.opencsv:
//            ResultSetHelper

public class ResultSetHelperService
    implements ResultSetHelper
{

    public static final int CLOBBUFFERSIZE = 2048;
    private static final int LONGNVARCHAR = -16;
    private static final int NCHAR = -15;
    private static final int NCLOB = 2011;
    private static final int NVARCHAR = -9;

    public ResultSetHelperService()
    {
    }

    private String getColumnValue(ResultSet resultset, int i, int j)
    {
        String s = "";
        i;
        JVM INSTR lookupswitch 23: default 200
    //                   -16: 355
    //                   -15: 355
    //                   -9: 355
    //                   -7: 216
    //                   -6: 301
    //                   -5: 274
    //                   -1: 355
    //                   1: 355
    //                   2: 285
    //                   3: 285
    //                   4: 301
    //                   5: 301
    //                   6: 285
    //                   7: 285
    //                   8: 285
    //                   12: 355
    //                   16: 232
    //                   91: 312
    //                   92: 323
    //                   93: 339
    //                   2000: 216
    //                   2005: 250
    //                   2011: 250;
           goto _L1 _L2 _L2 _L2 _L3 _L4 _L5 _L2 _L2 _L6 _L6 _L4 _L4 _L6 _L6 _L6 _L2 _L7 _L8 _L9 _L10 _L3 _L11 _L11
_L1:
        s = "";
_L13:
        if (s == null)
        {
            s = "";
        }
        return s;
_L3:
        s = handleObject(resultset.getObject(j));
        continue; /* Loop/switch isn't completed */
_L7:
        s = Boolean.valueOf(resultset.getBoolean(j)).toString();
        continue; /* Loop/switch isn't completed */
_L11:
        Clob clob = resultset.getClob(j);
        if (clob != null)
        {
            s = read(clob);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        s = handleLong(resultset, j);
        continue; /* Loop/switch isn't completed */
_L6:
        s = handleBigDecimal(resultset.getBigDecimal(j));
        continue; /* Loop/switch isn't completed */
_L4:
        s = handleInteger(resultset, j);
        continue; /* Loop/switch isn't completed */
_L8:
        s = handleDate(resultset, j);
        continue; /* Loop/switch isn't completed */
_L9:
        s = handleTime(resultset.getTime(j));
        continue; /* Loop/switch isn't completed */
_L10:
        s = handleTimestamp(resultset.getTimestamp(j));
        continue; /* Loop/switch isn't completed */
_L2:
        s = resultset.getString(j);
        if (true) goto _L13; else goto _L12
_L12:
    }

    private String handleBigDecimal(BigDecimal bigdecimal)
    {
        if (bigdecimal == null)
        {
            return "";
        } else
        {
            return bigdecimal.toString();
        }
    }

    private String handleDate(ResultSet resultset, int i)
    {
        java.sql.Date date = resultset.getDate(i);
        String s = null;
        if (date != null)
        {
            s = (new SimpleDateFormat("dd-MMM-yyyy")).format(date);
        }
        return s;
    }

    private String handleInteger(ResultSet resultset, int i)
    {
        int j = resultset.getInt(i);
        if (resultset.wasNull())
        {
            return "";
        } else
        {
            return Integer.toString(j);
        }
    }

    private String handleLong(ResultSet resultset, int i)
    {
        long l = resultset.getLong(i);
        if (resultset.wasNull())
        {
            return "";
        } else
        {
            return Long.toString(l);
        }
    }

    private String handleObject(Object obj)
    {
        if (obj == null)
        {
            return "";
        } else
        {
            return String.valueOf(obj);
        }
    }

    private String handleTime(Time time)
    {
        if (time == null)
        {
            return null;
        } else
        {
            return time.toString();
        }
    }

    private String handleTimestamp(Timestamp timestamp)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
        if (timestamp == null)
        {
            return null;
        } else
        {
            return simpledateformat.format(timestamp);
        }
    }

    private static String read(Clob clob)
    {
        StringBuilder stringbuilder = new StringBuilder((int)clob.length());
        Reader reader = clob.getCharacterStream();
        char ac[] = new char[2048];
        do
        {
            int i = reader.read(ac, 0, ac.length);
            if (i != -1)
            {
                stringbuilder.append(ac, 0, i);
            } else
            {
                return stringbuilder.toString();
            }
        } while (true);
    }

    public String[] getColumnNames(ResultSet resultset)
    {
        ArrayList arraylist = new ArrayList();
        ResultSetMetaData resultsetmetadata = resultset.getMetaData();
        for (int i = 0; i < resultsetmetadata.getColumnCount(); i++)
        {
            arraylist.add(resultsetmetadata.getColumnName(i + 1));
        }

        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public String[] getColumnValues(ResultSet resultset)
    {
        ArrayList arraylist = new ArrayList();
        ResultSetMetaData resultsetmetadata = resultset.getMetaData();
        for (int i = 0; i < resultsetmetadata.getColumnCount(); i++)
        {
            arraylist.add(getColumnValue(resultset, resultsetmetadata.getColumnType(i + 1), i + 1));
        }

        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }
}
