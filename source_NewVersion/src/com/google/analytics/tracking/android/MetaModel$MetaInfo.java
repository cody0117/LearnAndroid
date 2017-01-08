// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;


// Referenced classes of package com.google.analytics.tracking.android:
//            Log

public class mFormatter
{

    private final String mDefaultValue;
    private final  mFormatter;
    private final String mUrlParam;

    public String getDefaultValue()
    {
        return mDefaultValue;
    }

    public  getFormatter()
    {
        return mFormatter;
    }

    String getUrlParam()
    {
        return mUrlParam;
    }

    public String getUrlParam(String s)
    {
        if (s.contains("*"))
        {
            String s1 = mUrlParam;
            String as[] = s.split("\\*");
            int i = as.length;
            String s2 = null;
            if (i > 1)
            {
                int j;
                try
                {
                    j = Integer.parseInt(as[1]);
                }
                catch (NumberFormatException numberformatexception)
                {
                    Log.w((new StringBuilder("Unable to parse slot for url parameter ")).append(s1).toString());
                    return null;
                }
                s2 = (new StringBuilder()).append(s1).append(j).toString();
            }
            return s2;
        } else
        {
            return mUrlParam;
        }
    }

    public (String s, String s1,  )
    {
        mUrlParam = s;
        mDefaultValue = s1;
        mFormatter = ;
    }
}
