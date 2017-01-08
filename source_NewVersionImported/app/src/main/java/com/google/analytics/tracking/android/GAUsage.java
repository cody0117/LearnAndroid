// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import java.util.SortedSet;
import java.util.TreeSet;

class GAUsage
{

    private static final String BASE_64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
    private static final GAUsage INSTANCE = new GAUsage();
    private boolean mDisableUsage;
    private StringBuilder mSequence;
    private SortedSet mUsedFields;

    private GAUsage()
    {
        mUsedFields = new TreeSet();
        mSequence = new StringBuilder();
        mDisableUsage = false;
    }

    public static GAUsage getInstance()
    {
        return INSTANCE;
    }

    static GAUsage getPrivateInstance()
    {
        return new GAUsage();
    }

    public String getAndClearSequence()
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        if (mSequence.length() > 0)
        {
            mSequence.insert(0, ".");
        }
        s = mSequence.toString();
        mSequence = new StringBuilder();
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public String getAndClearUsage()
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder = new StringBuilder();
        int i;
        int j;
        i = 6;
        j = 0;
_L4:
        Field field;
        int k;
        if (mUsedFields.size() <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        field = (Field)mUsedFields.first();
        mUsedFields.remove(field);
        k = field.ordinal();
_L2:
        if (k < i)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
        i += 6;
        j = 0;
        if (true) goto _L2; else goto _L1
_L1:
        j += 1 << field.ordinal() % 6;
        if (true) goto _L4; else goto _L3
_L3:
        if (j > 0)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        if (stringbuilder.length() != 0)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        stringbuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
        String s;
        mUsedFields.clear();
        s = stringbuilder.toString();
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public void setDisableUsage(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        mDisableUsage = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setUsage(Field field)
    {
        this;
        JVM INSTR monitorenter ;
        if (!mDisableUsage)
        {
            mUsedFields.add(field);
            mSequence.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(field.ordinal()));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }


    private class Field extends Enum
    {

        private static final Field $VALUES[];
        public static final Field BLANK_06;
        public static final Field BLANK_13;
        public static final Field BLANK_15;
        public static final Field BLANK_17;
        public static final Field BLANK_48;
        public static final Field CONSTRUCT_EVENT;
        public static final Field CONSTRUCT_EXCEPTION;
        public static final Field CONSTRUCT_ITEM;
        public static final Field CONSTRUCT_RAW_EXCEPTION;
        public static final Field CONSTRUCT_SOCIAL;
        public static final Field CONSTRUCT_TIMING;
        public static final Field CONSTRUCT_TRANSACTION;
        public static final Field DISPATCH;
        public static final Field GET;
        public static final Field GET_ANONYMIZE_IP;
        public static final Field GET_APP_ID;
        public static final Field GET_APP_INSTALLER_ID;
        public static final Field GET_DEBUG;
        public static final Field GET_DEFAULT_TRACKER;
        public static final Field GET_EXCEPTION_PARSER;
        public static final Field GET_SAMPLE_RATE;
        public static final Field GET_TRACKER;
        public static final Field GET_TRACKING_ID;
        public static final Field GET_USE_SECURE;
        public static final Field REPORT_UNCAUGHT_EXCEPTIONS;
        public static final Field REQUEST_APP_OPT_OUT;
        public static final Field SEND;
        public static final Field SET;
        public static final Field SET_ANONYMIZE_IP;
        public static final Field SET_APP_ID;
        public static final Field SET_APP_INSTALLER_ID;
        public static final Field SET_APP_NAME;
        public static final Field SET_APP_OPT_OUT;
        public static final Field SET_APP_SCREEN;
        public static final Field SET_APP_VERSION;
        public static final Field SET_AUTO_ACTIVITY_TRACKING;
        public static final Field SET_CAMPAIGN;
        public static final Field SET_DEBUG;
        public static final Field SET_DEFAULT_TRACKER;
        public static final Field SET_DISPATCH_PERIOD;
        public static final Field SET_EXCEPTION_PARSER;
        public static final Field SET_REFERRER;
        public static final Field SET_SAMPLE_RATE;
        public static final Field SET_SESSION_TIMEOUT;
        public static final Field SET_START_SESSION;
        public static final Field SET_USE_SECURE;
        public static final Field TRACK_EVENT;
        public static final Field TRACK_EXCEPTION_WITH_DESCRIPTION;
        public static final Field TRACK_EXCEPTION_WITH_THROWABLE;
        public static final Field TRACK_SOCIAL;
        public static final Field TRACK_TIMING;
        public static final Field TRACK_TRANSACTION;
        public static final Field TRACK_VIEW;
        public static final Field TRACK_VIEW_WITH_APPSCREEN;

        public static Field valueOf(String s)
        {
            return (Field)Enum.valueOf(com/google/analytics/tracking/android/GAUsage$Field, s);
        }

        public static Field[] values()
        {
            return (Field[])$VALUES.clone();
        }

        static 
        {
            TRACK_VIEW = new Field("TRACK_VIEW", 0);
            TRACK_VIEW_WITH_APPSCREEN = new Field("TRACK_VIEW_WITH_APPSCREEN", 1);
            TRACK_EVENT = new Field("TRACK_EVENT", 2);
            TRACK_TRANSACTION = new Field("TRACK_TRANSACTION", 3);
            TRACK_EXCEPTION_WITH_DESCRIPTION = new Field("TRACK_EXCEPTION_WITH_DESCRIPTION", 4);
            TRACK_EXCEPTION_WITH_THROWABLE = new Field("TRACK_EXCEPTION_WITH_THROWABLE", 5);
            BLANK_06 = new Field("BLANK_06", 6);
            TRACK_TIMING = new Field("TRACK_TIMING", 7);
            TRACK_SOCIAL = new Field("TRACK_SOCIAL", 8);
            GET = new Field("GET", 9);
            SET = new Field("SET", 10);
            SEND = new Field("SEND", 11);
            SET_START_SESSION = new Field("SET_START_SESSION", 12);
            BLANK_13 = new Field("BLANK_13", 13);
            SET_APP_NAME = new Field("SET_APP_NAME", 14);
            BLANK_15 = new Field("BLANK_15", 15);
            SET_APP_VERSION = new Field("SET_APP_VERSION", 16);
            BLANK_17 = new Field("BLANK_17", 17);
            SET_APP_SCREEN = new Field("SET_APP_SCREEN", 18);
            GET_TRACKING_ID = new Field("GET_TRACKING_ID", 19);
            SET_ANONYMIZE_IP = new Field("SET_ANONYMIZE_IP", 20);
            GET_ANONYMIZE_IP = new Field("GET_ANONYMIZE_IP", 21);
            SET_SAMPLE_RATE = new Field("SET_SAMPLE_RATE", 22);
            GET_SAMPLE_RATE = new Field("GET_SAMPLE_RATE", 23);
            SET_USE_SECURE = new Field("SET_USE_SECURE", 24);
            GET_USE_SECURE = new Field("GET_USE_SECURE", 25);
            SET_REFERRER = new Field("SET_REFERRER", 26);
            SET_CAMPAIGN = new Field("SET_CAMPAIGN", 27);
            SET_APP_ID = new Field("SET_APP_ID", 28);
            GET_APP_ID = new Field("GET_APP_ID", 29);
            SET_EXCEPTION_PARSER = new Field("SET_EXCEPTION_PARSER", 30);
            GET_EXCEPTION_PARSER = new Field("GET_EXCEPTION_PARSER", 31);
            CONSTRUCT_TRANSACTION = new Field("CONSTRUCT_TRANSACTION", 32);
            CONSTRUCT_EXCEPTION = new Field("CONSTRUCT_EXCEPTION", 33);
            CONSTRUCT_RAW_EXCEPTION = new Field("CONSTRUCT_RAW_EXCEPTION", 34);
            CONSTRUCT_TIMING = new Field("CONSTRUCT_TIMING", 35);
            CONSTRUCT_SOCIAL = new Field("CONSTRUCT_SOCIAL", 36);
            SET_DEBUG = new Field("SET_DEBUG", 37);
            GET_DEBUG = new Field("GET_DEBUG", 38);
            GET_TRACKER = new Field("GET_TRACKER", 39);
            GET_DEFAULT_TRACKER = new Field("GET_DEFAULT_TRACKER", 40);
            SET_DEFAULT_TRACKER = new Field("SET_DEFAULT_TRACKER", 41);
            SET_APP_OPT_OUT = new Field("SET_APP_OPT_OUT", 42);
            REQUEST_APP_OPT_OUT = new Field("REQUEST_APP_OPT_OUT", 43);
            DISPATCH = new Field("DISPATCH", 44);
            SET_DISPATCH_PERIOD = new Field("SET_DISPATCH_PERIOD", 45);
            BLANK_48 = new Field("BLANK_48", 46);
            REPORT_UNCAUGHT_EXCEPTIONS = new Field("REPORT_UNCAUGHT_EXCEPTIONS", 47);
            SET_AUTO_ACTIVITY_TRACKING = new Field("SET_AUTO_ACTIVITY_TRACKING", 48);
            SET_SESSION_TIMEOUT = new Field("SET_SESSION_TIMEOUT", 49);
            CONSTRUCT_EVENT = new Field("CONSTRUCT_EVENT", 50);
            CONSTRUCT_ITEM = new Field("CONSTRUCT_ITEM", 51);
            SET_APP_INSTALLER_ID = new Field("SET_APP_INSTALLER_ID", 52);
            GET_APP_INSTALLER_ID = new Field("GET_APP_INSTALLER_ID", 53);
            Field afield[] = new Field[54];
            afield[0] = TRACK_VIEW;
            afield[1] = TRACK_VIEW_WITH_APPSCREEN;
            afield[2] = TRACK_EVENT;
            afield[3] = TRACK_TRANSACTION;
            afield[4] = TRACK_EXCEPTION_WITH_DESCRIPTION;
            afield[5] = TRACK_EXCEPTION_WITH_THROWABLE;
            afield[6] = BLANK_06;
            afield[7] = TRACK_TIMING;
            afield[8] = TRACK_SOCIAL;
            afield[9] = GET;
            afield[10] = SET;
            afield[11] = SEND;
            afield[12] = SET_START_SESSION;
            afield[13] = BLANK_13;
            afield[14] = SET_APP_NAME;
            afield[15] = BLANK_15;
            afield[16] = SET_APP_VERSION;
            afield[17] = BLANK_17;
            afield[18] = SET_APP_SCREEN;
            afield[19] = GET_TRACKING_ID;
            afield[20] = SET_ANONYMIZE_IP;
            afield[21] = GET_ANONYMIZE_IP;
            afield[22] = SET_SAMPLE_RATE;
            afield[23] = GET_SAMPLE_RATE;
            afield[24] = SET_USE_SECURE;
            afield[25] = GET_USE_SECURE;
            afield[26] = SET_REFERRER;
            afield[27] = SET_CAMPAIGN;
            afield[28] = SET_APP_ID;
            afield[29] = GET_APP_ID;
            afield[30] = SET_EXCEPTION_PARSER;
            afield[31] = GET_EXCEPTION_PARSER;
            afield[32] = CONSTRUCT_TRANSACTION;
            afield[33] = CONSTRUCT_EXCEPTION;
            afield[34] = CONSTRUCT_RAW_EXCEPTION;
            afield[35] = CONSTRUCT_TIMING;
            afield[36] = CONSTRUCT_SOCIAL;
            afield[37] = SET_DEBUG;
            afield[38] = GET_DEBUG;
            afield[39] = GET_TRACKER;
            afield[40] = GET_DEFAULT_TRACKER;
            afield[41] = SET_DEFAULT_TRACKER;
            afield[42] = SET_APP_OPT_OUT;
            afield[43] = REQUEST_APP_OPT_OUT;
            afield[44] = DISPATCH;
            afield[45] = SET_DISPATCH_PERIOD;
            afield[46] = BLANK_48;
            afield[47] = REPORT_UNCAUGHT_EXCEPTIONS;
            afield[48] = SET_AUTO_ACTIVITY_TRACKING;
            afield[49] = SET_SESSION_TIMEOUT;
            afield[50] = CONSTRUCT_EVENT;
            afield[51] = CONSTRUCT_ITEM;
            afield[52] = SET_APP_INSTALLER_ID;
            afield[53] = GET_APP_INSTALLER_ID;
            $VALUES = afield;
        }

        private Field(String s, int i)
        {
            super(s, i);
        }
    }

}
