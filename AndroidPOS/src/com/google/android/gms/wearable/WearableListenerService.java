// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.app.Service;

public abstract class WearableListenerService extends Service
{

    private volatile int a;
    private Object b;

    public WearableListenerService()
    {
        a = -1;
        b = new Object();
    }
}
