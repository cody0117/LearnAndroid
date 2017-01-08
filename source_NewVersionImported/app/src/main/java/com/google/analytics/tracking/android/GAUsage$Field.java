// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;


public final class _cls9 extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BLANK_06;
    public static final .VALUES BLANK_13;
    public static final .VALUES BLANK_15;
    public static final .VALUES BLANK_17;
    public static final .VALUES BLANK_48;
    public static final .VALUES CONSTRUCT_EVENT;
    public static final .VALUES CONSTRUCT_EXCEPTION;
    public static final .VALUES CONSTRUCT_ITEM;
    public static final .VALUES CONSTRUCT_RAW_EXCEPTION;
    public static final .VALUES CONSTRUCT_SOCIAL;
    public static final .VALUES CONSTRUCT_TIMING;
    public static final .VALUES CONSTRUCT_TRANSACTION;
    public static final .VALUES DISPATCH;
    public static final .VALUES GET;
    public static final .VALUES GET_ANONYMIZE_IP;
    public static final .VALUES GET_APP_ID;
    public static final .VALUES GET_APP_INSTALLER_ID;
    public static final .VALUES GET_DEBUG;
    public static final .VALUES GET_DEFAULT_TRACKER;
    public static final .VALUES GET_EXCEPTION_PARSER;
    public static final .VALUES GET_SAMPLE_RATE;
    public static final .VALUES GET_TRACKER;
    public static final .VALUES GET_TRACKING_ID;
    public static final .VALUES GET_USE_SECURE;
    public static final .VALUES REPORT_UNCAUGHT_EXCEPTIONS;
    public static final .VALUES REQUEST_APP_OPT_OUT;
    public static final .VALUES SEND;
    public static final .VALUES SET;
    public static final .VALUES SET_ANONYMIZE_IP;
    public static final .VALUES SET_APP_ID;
    public static final .VALUES SET_APP_INSTALLER_ID;
    public static final .VALUES SET_APP_NAME;
    public static final .VALUES SET_APP_OPT_OUT;
    public static final .VALUES SET_APP_SCREEN;
    public static final .VALUES SET_APP_VERSION;
    public static final .VALUES SET_AUTO_ACTIVITY_TRACKING;
    public static final .VALUES SET_CAMPAIGN;
    public static final .VALUES SET_DEBUG;
    public static final .VALUES SET_DEFAULT_TRACKER;
    public static final .VALUES SET_DISPATCH_PERIOD;
    public static final .VALUES SET_EXCEPTION_PARSER;
    public static final .VALUES SET_REFERRER;
    public static final .VALUES SET_SAMPLE_RATE;
    public static final .VALUES SET_SESSION_TIMEOUT;
    public static final .VALUES SET_START_SESSION;
    public static final .VALUES SET_USE_SECURE;
    public static final .VALUES TRACK_EVENT;
    public static final .VALUES TRACK_EXCEPTION_WITH_DESCRIPTION;
    public static final .VALUES TRACK_EXCEPTION_WITH_THROWABLE;
    public static final .VALUES TRACK_SOCIAL;
    public static final .VALUES TRACK_TIMING;
    public static final .VALUES TRACK_TRANSACTION;
    public static final .VALUES TRACK_VIEW;
    public static final .VALUES TRACK_VIEW_WITH_APPSCREEN;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/google/analytics/tracking/android/GAUsage$Field, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    static 
    {
        TRACK_VIEW = new <init>("TRACK_VIEW", 0);
        TRACK_VIEW_WITH_APPSCREEN = new <init>("TRACK_VIEW_WITH_APPSCREEN", 1);
        TRACK_EVENT = new <init>("TRACK_EVENT", 2);
        TRACK_TRANSACTION = new <init>("TRACK_TRANSACTION", 3);
        TRACK_EXCEPTION_WITH_DESCRIPTION = new <init>("TRACK_EXCEPTION_WITH_DESCRIPTION", 4);
        TRACK_EXCEPTION_WITH_THROWABLE = new <init>("TRACK_EXCEPTION_WITH_THROWABLE", 5);
        BLANK_06 = new <init>("BLANK_06", 6);
        TRACK_TIMING = new <init>("TRACK_TIMING", 7);
        TRACK_SOCIAL = new <init>("TRACK_SOCIAL", 8);
        GET = new <init>("GET", 9);
        SET = new <init>("SET", 10);
        SEND = new <init>("SEND", 11);
        SET_START_SESSION = new <init>("SET_START_SESSION", 12);
        BLANK_13 = new <init>("BLANK_13", 13);
        SET_APP_NAME = new <init>("SET_APP_NAME", 14);
        BLANK_15 = new <init>("BLANK_15", 15);
        SET_APP_VERSION = new <init>("SET_APP_VERSION", 16);
        BLANK_17 = new <init>("BLANK_17", 17);
        SET_APP_SCREEN = new <init>("SET_APP_SCREEN", 18);
        GET_TRACKING_ID = new <init>("GET_TRACKING_ID", 19);
        SET_ANONYMIZE_IP = new <init>("SET_ANONYMIZE_IP", 20);
        GET_ANONYMIZE_IP = new <init>("GET_ANONYMIZE_IP", 21);
        SET_SAMPLE_RATE = new <init>("SET_SAMPLE_RATE", 22);
        GET_SAMPLE_RATE = new <init>("GET_SAMPLE_RATE", 23);
        SET_USE_SECURE = new <init>("SET_USE_SECURE", 24);
        GET_USE_SECURE = new <init>("GET_USE_SECURE", 25);
        SET_REFERRER = new <init>("SET_REFERRER", 26);
        SET_CAMPAIGN = new <init>("SET_CAMPAIGN", 27);
        SET_APP_ID = new <init>("SET_APP_ID", 28);
        GET_APP_ID = new <init>("GET_APP_ID", 29);
        SET_EXCEPTION_PARSER = new <init>("SET_EXCEPTION_PARSER", 30);
        GET_EXCEPTION_PARSER = new <init>("GET_EXCEPTION_PARSER", 31);
        CONSTRUCT_TRANSACTION = new <init>("CONSTRUCT_TRANSACTION", 32);
        CONSTRUCT_EXCEPTION = new <init>("CONSTRUCT_EXCEPTION", 33);
        CONSTRUCT_RAW_EXCEPTION = new <init>("CONSTRUCT_RAW_EXCEPTION", 34);
        CONSTRUCT_TIMING = new <init>("CONSTRUCT_TIMING", 35);
        CONSTRUCT_SOCIAL = new <init>("CONSTRUCT_SOCIAL", 36);
        SET_DEBUG = new <init>("SET_DEBUG", 37);
        GET_DEBUG = new <init>("GET_DEBUG", 38);
        GET_TRACKER = new <init>("GET_TRACKER", 39);
        GET_DEFAULT_TRACKER = new <init>("GET_DEFAULT_TRACKER", 40);
        SET_DEFAULT_TRACKER = new <init>("SET_DEFAULT_TRACKER", 41);
        SET_APP_OPT_OUT = new <init>("SET_APP_OPT_OUT", 42);
        REQUEST_APP_OPT_OUT = new <init>("REQUEST_APP_OPT_OUT", 43);
        DISPATCH = new <init>("DISPATCH", 44);
        SET_DISPATCH_PERIOD = new <init>("SET_DISPATCH_PERIOD", 45);
        BLANK_48 = new <init>("BLANK_48", 46);
        REPORT_UNCAUGHT_EXCEPTIONS = new <init>("REPORT_UNCAUGHT_EXCEPTIONS", 47);
        SET_AUTO_ACTIVITY_TRACKING = new <init>("SET_AUTO_ACTIVITY_TRACKING", 48);
        SET_SESSION_TIMEOUT = new <init>("SET_SESSION_TIMEOUT", 49);
        CONSTRUCT_EVENT = new <init>("CONSTRUCT_EVENT", 50);
        CONSTRUCT_ITEM = new <init>("CONSTRUCT_ITEM", 51);
        SET_APP_INSTALLER_ID = new <init>("SET_APP_INSTALLER_ID", 52);
        GET_APP_INSTALLER_ID = new <init>("GET_APP_INSTALLER_ID", 53);
        d_3B_.clone aclone[] = new <init>[54];
        aclone[0] = TRACK_VIEW;
        aclone[1] = TRACK_VIEW_WITH_APPSCREEN;
        aclone[2] = TRACK_EVENT;
        aclone[3] = TRACK_TRANSACTION;
        aclone[4] = TRACK_EXCEPTION_WITH_DESCRIPTION;
        aclone[5] = TRACK_EXCEPTION_WITH_THROWABLE;
        aclone[6] = BLANK_06;
        aclone[7] = TRACK_TIMING;
        aclone[8] = TRACK_SOCIAL;
        aclone[9] = GET;
        aclone[10] = SET;
        aclone[11] = SEND;
        aclone[12] = SET_START_SESSION;
        aclone[13] = BLANK_13;
        aclone[14] = SET_APP_NAME;
        aclone[15] = BLANK_15;
        aclone[16] = SET_APP_VERSION;
        aclone[17] = BLANK_17;
        aclone[18] = SET_APP_SCREEN;
        aclone[19] = GET_TRACKING_ID;
        aclone[20] = SET_ANONYMIZE_IP;
        aclone[21] = GET_ANONYMIZE_IP;
        aclone[22] = SET_SAMPLE_RATE;
        aclone[23] = GET_SAMPLE_RATE;
        aclone[24] = SET_USE_SECURE;
        aclone[25] = GET_USE_SECURE;
        aclone[26] = SET_REFERRER;
        aclone[27] = SET_CAMPAIGN;
        aclone[28] = SET_APP_ID;
        aclone[29] = GET_APP_ID;
        aclone[30] = SET_EXCEPTION_PARSER;
        aclone[31] = GET_EXCEPTION_PARSER;
        aclone[32] = CONSTRUCT_TRANSACTION;
        aclone[33] = CONSTRUCT_EXCEPTION;
        aclone[34] = CONSTRUCT_RAW_EXCEPTION;
        aclone[35] = CONSTRUCT_TIMING;
        aclone[36] = CONSTRUCT_SOCIAL;
        aclone[37] = SET_DEBUG;
        aclone[38] = GET_DEBUG;
        aclone[39] = GET_TRACKER;
        aclone[40] = GET_DEFAULT_TRACKER;
        aclone[41] = SET_DEFAULT_TRACKER;
        aclone[42] = SET_APP_OPT_OUT;
        aclone[43] = REQUEST_APP_OPT_OUT;
        aclone[44] = DISPATCH;
        aclone[45] = SET_DISPATCH_PERIOD;
        aclone[46] = BLANK_48;
        aclone[47] = REPORT_UNCAUGHT_EXCEPTIONS;
        aclone[48] = SET_AUTO_ACTIVITY_TRACKING;
        aclone[49] = SET_SESSION_TIMEOUT;
        aclone[50] = CONSTRUCT_EVENT;
        aclone[51] = CONSTRUCT_ITEM;
        aclone[52] = SET_APP_INSTALLER_ID;
        aclone[53] = GET_APP_INSTALLER_ID;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
