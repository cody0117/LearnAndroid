// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

interface 
{

    public abstract Intent makeMainActivity(ComponentName componentname);

    public abstract Intent makeMainSelectorActivity(String s, String s1);

    public abstract Intent makeRestartActivityTask(ComponentName componentname);
}