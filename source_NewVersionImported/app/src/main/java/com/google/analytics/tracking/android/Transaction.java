// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class Transaction
{

    private final String mAffiliation;
    private final String mCurrencyCode;
    private final Map mItems;
    private final long mShippingCostInMicros;
    private final long mTotalCostInMicros;
    private final long mTotalTaxInMicros;
    private final String mTransactionId;

    private Transaction(Builder builder)
    {
        mTransactionId = builder.mTransactionId;
        mTotalCostInMicros = builder.mTotalCostInMicros;
        mAffiliation = builder.mAffiliation;
        mTotalTaxInMicros = builder.mTotalTaxInMicros;
        mShippingCostInMicros = builder.mShippingCostInMicros;
        mCurrencyCode = builder.mCurrencyCode;
        mItems = new HashMap();
    }

    Transaction(Builder builder, _cls1 _pcls1)
    {
        this(builder);
    }

    public final void addItem(Item item)
    {
        mItems.put(item.getSKU(), item);
    }

    public final String getAffiliation()
    {
        return mAffiliation;
    }

    public final String getCurrencyCode()
    {
        return mCurrencyCode;
    }

    public final List getItems()
    {
        return new ArrayList(mItems.values());
    }

    public final long getShippingCostInMicros()
    {
        return mShippingCostInMicros;
    }

    public final long getTotalCostInMicros()
    {
        return mTotalCostInMicros;
    }

    public final long getTotalTaxInMicros()
    {
        return mTotalTaxInMicros;
    }

    public final String getTransactionId()
    {
        return mTransactionId;
    }

    private class Builder
    {

        private String mAffiliation;
        private String mCurrencyCode;
        private long mShippingCostInMicros;
        private final long mTotalCostInMicros;
        private long mTotalTaxInMicros;
        private final String mTransactionId;

        public final Transaction build()
        {
            return new Transaction(this, null);
        }

        public final Builder setAffiliation(String s)
        {
            mAffiliation = s;
            return this;
        }

        public final Builder setCurrencyCode(String s)
        {
            mCurrencyCode = s;
            return this;
        }

        public final Builder setShippingCostInMicros(long l)
        {
            mShippingCostInMicros = l;
            return this;
        }

        public final Builder setTotalTaxInMicros(long l)
        {
            mTotalTaxInMicros = l;
            return this;
        }







        public Builder(String s, long l)
        {
            mAffiliation = null;
            mTotalTaxInMicros = 0L;
            mShippingCostInMicros = 0L;
            mCurrencyCode = null;
            if (TextUtils.isEmpty(s))
            {
                throw new IllegalArgumentException("orderId must not be empty or null");
            } else
            {
                mTransactionId = s;
                mTotalCostInMicros = l;
                return;
            }
        }
    }


    private class Item
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

        private Item(Builder builder)
        {
            class Builder
            {

                private String mCategory;
                private final String mName;
                private final long mPriceInMicros;
                private final long mQuantity;
                private final String mSKU;

                public final Item build()
                {
                    return new Item(this, null);
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

        Item(Builder builder, _cls1 _pcls1)
        {
            this(builder);
        }
    }

}
