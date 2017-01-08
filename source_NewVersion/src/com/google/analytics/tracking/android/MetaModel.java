// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import java.util.HashMap;
import java.util.Map;

class MetaModel
{

    private Map mMetaInfos;

    MetaModel()
    {
        mMetaInfos = new HashMap();
    }

    public void addField(String s, String s1, String s2, Formatter formatter)
    {
        mMetaInfos.put(s, new MetaInfo(s1, s2, formatter));
    }

    MetaInfo getMetaInfo(String s)
    {
        if (s.startsWith("&"))
        {
            return new MetaInfo(s.substring(1), null, null);
        }
        if (s.contains("*"))
        {
            s = s.substring(0, s.indexOf("*"));
        }
        return (MetaInfo)mMetaInfos.get(s);
    }

    private class MetaInfo
    {

        private final String mDefaultValue;
        private final Formatter mFormatter;
        private final String mUrlParam;

        public String getDefaultValue()
        {
            return mDefaultValue;
        }

        public Formatter getFormatter()
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

        public MetaInfo(String s, String s1, Formatter formatter)
        {
            mUrlParam = s;
            mDefaultValue = s1;
            mFormatter = formatter;
        }
    }

}
