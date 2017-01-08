// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import java.util.Map;
import java.util.Random;

class AdMobInfo
{

    private static final AdMobInfo INSTANCE = new AdMobInfo();
    private int mAdHitId;
    private Random mRandom;

    private AdMobInfo()
    {
        mRandom = new Random();
    }

    static AdMobInfo getInstance()
    {
        return INSTANCE;
    }

    int generateAdHitId()
    {
        mAdHitId = 1 + mRandom.nextInt(0x7ffffffe);
        return mAdHitId;
    }

    int getAdHitId()
    {
        return mAdHitId;
    }

    Map getJoinIds()
    {
        return null;
    }

    void setAdHitId(int i)
    {
        mAdHitId = i;
    }

}
