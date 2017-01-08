// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.text.TextUtils;

public final class Builder
{

    private final String mCategory;
    private final String mName;
    private final long mPriceInMicros;
    private final long mQuantity;
    private final String mSKU;

    public final String getCategory()
    {
        return mCategory;
    }

    public final String getName()
    {
        return mName;
    }

    public final long getPriceInMicros()
    {
        return mPriceInMicros;
    }

    public final long getQuantity()
    {
        return mQuantity;
    }

    public final String getSKU()
    {
        return mSKU;
    }

    private Builder(Builder builder)
    {
        class Builder
        {

            private String mCategory;
            private final String mName;
            private final long mPriceInMicros;
            private final long mQuantity;
            private final String mSKU;

            public final Transaction.Item build()
            {
                return new Transaction.Item(this, null);
            }

            public final Builder setProductCategory(String s)
            {
                mCategory = s;
                return this;
            }






            public Builder(String s, String s1, long l, long l1)
            {
                mCategory = null;
                if (TextUtils.isEmpty(s))
                {
                    throw new IllegalArgumentException("SKU must not be empty or null");
                }
                if (TextUtils.isEmpty(s1))
                {
                    throw new IllegalArgumentException("name must not be empty or null");
                } else
                {
                    mSKU = s;
                    mName = s1;
                    mPriceInMicros = l;
                    mQuantity = l1;
                    return;
                }
            }
        }

        mSKU = builder.mSKU;
        mPriceInMicros = builder.mPriceInMicros;
        mQuantity = builder.mQuantity;
        mName = builder.mName;
        mCategory = builder.mCategory;
    }

    Builder(Builder builder, Builder builder1)
    {
        this(builder);
    }
}
