// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.app:
//            LoaderManager, FragmentActivity, FragmentManagerImpl

class LoaderManagerImpl extends LoaderManager
{

    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    FragmentActivity mActivity;
    boolean mCreatingLoader;
    final SparseArrayCompat mInactiveLoaders = new SparseArrayCompat();
    final SparseArrayCompat mLoaders = new SparseArrayCompat();
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;

    LoaderManagerImpl(String s, FragmentActivity fragmentactivity, boolean flag)
    {
        mWho = s;
        mActivity = fragmentactivity;
        mStarted = flag;
    }

    private LoaderInfo createAndInstallLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        LoaderInfo loaderinfo;
        mCreatingLoader = true;
        loaderinfo = createLoader(i, bundle, loadercallbacks);
        installLoader(loaderinfo);
        mCreatingLoader = false;
        return loaderinfo;
        Exception exception;
        exception;
        mCreatingLoader = false;
        throw exception;
    }

    private LoaderInfo createLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        LoaderInfo loaderinfo = new LoaderInfo(i, bundle, loadercallbacks);
        loaderinfo.mLoader = loadercallbacks.onCreateLoader(i, bundle);
        return loaderinfo;
    }

    public void destroyLoader(int i)
    {
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (DEBUG)
        {
            (new StringBuilder("destroyLoader in ")).append(this).append(" of ").append(i);
        }
        int j = mLoaders.indexOfKey(i);
        if (j >= 0)
        {
            LoaderInfo loaderinfo1 = (LoaderInfo)mLoaders.valueAt(j);
            mLoaders.removeAt(j);
            loaderinfo1.destroy();
        }
        int k = mInactiveLoaders.indexOfKey(i);
        if (k >= 0)
        {
            LoaderInfo loaderinfo = (LoaderInfo)mInactiveLoaders.valueAt(k);
            mInactiveLoaders.removeAt(k);
            loaderinfo.destroy();
        }
        if (mActivity != null && !hasRunningLoaders())
        {
            mActivity.mFragments.startPendingDeferredFragments();
        }
    }

    void doDestroy()
    {
        if (!mRetaining)
        {
            if (DEBUG)
            {
                (new StringBuilder("Destroying Active in ")).append(this);
            }
            for (int j = -1 + mLoaders.size(); j >= 0; j--)
            {
                ((LoaderInfo)mLoaders.valueAt(j)).destroy();
            }

            mLoaders.clear();
        }
        if (DEBUG)
        {
            (new StringBuilder("Destroying Inactive in ")).append(this);
        }
        for (int i = -1 + mInactiveLoaders.size(); i >= 0; i--)
        {
            ((LoaderInfo)mInactiveLoaders.valueAt(i)).destroy();
        }

        mInactiveLoaders.clear();
    }

    void doReportNextStart()
    {
        for (int i = -1 + mLoaders.size(); i >= 0; i--)
        {
            ((LoaderInfo)mLoaders.valueAt(i)).mReportNextStart = true;
        }

    }

    void doReportStart()
    {
        for (int i = -1 + mLoaders.size(); i >= 0; i--)
        {
            ((LoaderInfo)mLoaders.valueAt(i)).reportStart();
        }

    }

    void doRetain()
    {
        if (DEBUG)
        {
            (new StringBuilder("Retaining in ")).append(this);
        }
        if (!mStarted)
        {
            (new RuntimeException("here")).fillInStackTrace();
            (new StringBuilder("Called doRetain when not started: ")).append(this);
        } else
        {
            mRetaining = true;
            mStarted = false;
            int i = -1 + mLoaders.size();
            while (i >= 0) 
            {
                ((LoaderInfo)mLoaders.valueAt(i)).retain();
                i--;
            }
        }
    }

    void doStart()
    {
        if (DEBUG)
        {
            (new StringBuilder("Starting in ")).append(this);
        }
        if (mStarted)
        {
            (new RuntimeException("here")).fillInStackTrace();
            (new StringBuilder("Called doStart when already started: ")).append(this);
        } else
        {
            mStarted = true;
            int i = -1 + mLoaders.size();
            while (i >= 0) 
            {
                ((LoaderInfo)mLoaders.valueAt(i)).start();
                i--;
            }
        }
    }

    void doStop()
    {
        if (DEBUG)
        {
            (new StringBuilder("Stopping in ")).append(this);
        }
        if (!mStarted)
        {
            (new RuntimeException("here")).fillInStackTrace();
            (new StringBuilder("Called doStop when not started: ")).append(this);
            return;
        }
        for (int i = -1 + mLoaders.size(); i >= 0; i--)
        {
            ((LoaderInfo)mLoaders.valueAt(i)).stop();
        }

        mStarted = false;
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        int i = 0;
        if (mLoaders.size() > 0)
        {
            printwriter.print(s);
            printwriter.println("Active Loaders:");
            String s2 = (new StringBuilder()).append(s).append("    ").toString();
            for (int j = 0; j < mLoaders.size(); j++)
            {
                LoaderInfo loaderinfo1 = (LoaderInfo)mLoaders.valueAt(j);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(mLoaders.keyAt(j));
                printwriter.print(": ");
                printwriter.println(loaderinfo1.toString());
                loaderinfo1.dump(s2, filedescriptor, printwriter, as);
            }

        }
        if (mInactiveLoaders.size() > 0)
        {
            printwriter.print(s);
            printwriter.println("Inactive Loaders:");
            String s1 = (new StringBuilder()).append(s).append("    ").toString();
            for (; i < mInactiveLoaders.size(); i++)
            {
                LoaderInfo loaderinfo = (LoaderInfo)mInactiveLoaders.valueAt(i);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(mInactiveLoaders.keyAt(i));
                printwriter.print(": ");
                printwriter.println(loaderinfo.toString());
                loaderinfo.dump(s1, filedescriptor, printwriter, as);
            }

        }
    }

    void finishRetain()
    {
        if (mRetaining)
        {
            if (DEBUG)
            {
                (new StringBuilder("Finished Retaining in ")).append(this);
            }
            mRetaining = false;
            for (int i = -1 + mLoaders.size(); i >= 0; i--)
            {
                ((LoaderInfo)mLoaders.valueAt(i)).finishRetain();
            }

        }
    }

    public Loader getLoader(int i)
    {
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderinfo = (LoaderInfo)mLoaders.get(i);
        if (loaderinfo != null)
        {
            if (loaderinfo.mPendingLoader != null)
            {
                return loaderinfo.mPendingLoader.mLoader;
            } else
            {
                return loaderinfo.mLoader;
            }
        } else
        {
            return null;
        }
    }

    public boolean hasRunningLoaders()
    {
        int i = mLoaders.size();
        int j = 0;
        boolean flag = false;
        while (j < i) 
        {
            LoaderInfo loaderinfo = (LoaderInfo)mLoaders.valueAt(j);
            boolean flag1;
            if (loaderinfo.mStarted && !loaderinfo.mDeliveredData)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag |= flag1;
            j++;
        }
        return flag;
    }

    public Loader initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderinfo = (LoaderInfo)mLoaders.get(i);
        if (DEBUG)
        {
            (new StringBuilder("initLoader in ")).append(this).append(": args=").append(bundle);
        }
        if (loaderinfo == null)
        {
            loaderinfo = createAndInstallLoader(i, bundle, loadercallbacks);
            if (DEBUG)
            {
                (new StringBuilder("  Created new loader ")).append(loaderinfo);
            }
        } else
        {
            if (DEBUG)
            {
                (new StringBuilder("  Re-using existing loader ")).append(loaderinfo);
            }
            loaderinfo.mCallbacks = loadercallbacks;
        }
        if (loaderinfo.mHaveData && mStarted)
        {
            loaderinfo.callOnLoadFinished(loaderinfo.mLoader, loaderinfo.mData);
        }
        return loaderinfo.mLoader;
    }

    void installLoader(LoaderInfo loaderinfo)
    {
        mLoaders.put(loaderinfo.mId, loaderinfo);
        if (mStarted)
        {
            loaderinfo.start();
        }
    }

    public Loader restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
    {
        LoaderInfo loaderinfo;
        if (mCreatingLoader)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        loaderinfo = (LoaderInfo)mLoaders.get(i);
        if (DEBUG)
        {
            (new StringBuilder("restartLoader in ")).append(this).append(": args=").append(bundle);
        }
        if (loaderinfo == null) goto _L2; else goto _L1
_L1:
        LoaderInfo loaderinfo1 = (LoaderInfo)mInactiveLoaders.get(i);
        if (loaderinfo1 == null) goto _L4; else goto _L3
_L3:
        if (!loaderinfo.mHaveData) goto _L6; else goto _L5
_L5:
        if (DEBUG)
        {
            (new StringBuilder("  Removing last inactive loader: ")).append(loaderinfo);
        }
        loaderinfo1.mDeliveredData = false;
        loaderinfo1.destroy();
_L9:
        loaderinfo.mLoader.abandon();
        mInactiveLoaders.put(i, loaderinfo);
_L2:
        return createAndInstallLoader(i, bundle, loadercallbacks).mLoader;
_L6:
        if (loaderinfo.mStarted)
        {
            break; /* Loop/switch isn't completed */
        }
        DEBUG;
        mLoaders.put(i, null);
        loaderinfo.destroy();
        if (true) goto _L2; else goto _L7
_L7:
        if (loaderinfo.mPendingLoader != null)
        {
            if (DEBUG)
            {
                (new StringBuilder("  Removing pending loader: ")).append(loaderinfo.mPendingLoader);
            }
            loaderinfo.mPendingLoader.destroy();
            loaderinfo.mPendingLoader = null;
        }
        DEBUG;
        loaderinfo.mPendingLoader = createLoader(i, bundle, loadercallbacks);
        return loaderinfo.mPendingLoader.mLoader;
_L4:
        if (DEBUG)
        {
            (new StringBuilder("  Making last loader inactive: ")).append(loaderinfo);
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("LoaderManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        DebugUtils.buildShortClassTag(mActivity, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

    void updateActivity(FragmentActivity fragmentactivity)
    {
        mActivity = fragmentactivity;
    }

    static 
    {
        DEBUG = false;
    }

    private class LoaderInfo
        implements android.support.v4.content.Loader.OnLoadCompleteListener
    {

        final Bundle mArgs;
        LoaderManager.LoaderCallbacks mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        Loader mLoader;
        LoaderInfo mPendingLoader;
        boolean mReportNextStart;
        boolean mRetaining;
        boolean mRetainingStarted;
        boolean mStarted;
        final LoaderManagerImpl this$0;

        final void callOnLoadFinished(Loader loader, Object obj)
        {
            if (mCallbacks == null)
            {
                break MISSING_BLOCK_LABEL_123;
            }
            String s;
            Exception exception;
            if (mActivity != null)
            {
                String s1 = mActivity.mFragments.mNoTransactionsBecause;
                mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
                s = s1;
            } else
            {
                s = null;
            }
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  onLoadFinished in ")).append(loader).append(": ").append(loader.dataToString(obj));
            }
            mCallbacks.onLoadFinished(loader, obj);
            if (mActivity != null)
            {
                mActivity.mFragments.mNoTransactionsBecause = s;
            }
            mDeliveredData = true;
            return;
            exception;
            if (mActivity != null)
            {
                mActivity.mFragments.mNoTransactionsBecause = s;
            }
            throw exception;
        }

        final void destroy()
        {
_L2:
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Destroying: ")).append(this);
            }
            mDestroyed = true;
            boolean flag = mDeliveredData;
            mDeliveredData = false;
            if (mCallbacks == null || mLoader == null || !mHaveData || !flag)
            {
                break MISSING_BLOCK_LABEL_160;
            }
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Reseting: ")).append(this);
            }
            String s;
            Exception exception;
            if (mActivity != null)
            {
                String s1 = mActivity.mFragments.mNoTransactionsBecause;
                mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
                s = s1;
            } else
            {
                s = null;
            }
            mCallbacks.onLoaderReset(mLoader);
            if (mActivity != null)
            {
                mActivity.mFragments.mNoTransactionsBecause = s;
            }
            mCallbacks = null;
            mData = null;
            mHaveData = false;
            if (mLoader != null)
            {
                if (mListenerRegistered)
                {
                    mListenerRegistered = false;
                    mLoader.unregisterListener(this);
                }
                mLoader.reset();
            }
            if (mPendingLoader != null)
            {
                this = mPendingLoader;
            } else
            {
                return;
            }
            if (true) goto _L2; else goto _L1
_L1:
            exception;
            if (mActivity != null)
            {
                mActivity.mFragments.mNoTransactionsBecause = s;
            }
            throw exception;
        }

        public final void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
        {
            do
            {
                printwriter.print(s);
                printwriter.print("mId=");
                printwriter.print(mId);
                printwriter.print(" mArgs=");
                printwriter.println(mArgs);
                printwriter.print(s);
                printwriter.print("mCallbacks=");
                printwriter.println(mCallbacks);
                printwriter.print(s);
                printwriter.print("mLoader=");
                printwriter.println(mLoader);
                if (mLoader != null)
                {
                    mLoader.dump((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
                }
                if (mHaveData || mDeliveredData)
                {
                    printwriter.print(s);
                    printwriter.print("mHaveData=");
                    printwriter.print(mHaveData);
                    printwriter.print("  mDeliveredData=");
                    printwriter.println(mDeliveredData);
                    printwriter.print(s);
                    printwriter.print("mData=");
                    printwriter.println(mData);
                }
                printwriter.print(s);
                printwriter.print("mStarted=");
                printwriter.print(mStarted);
                printwriter.print(" mReportNextStart=");
                printwriter.print(mReportNextStart);
                printwriter.print(" mDestroyed=");
                printwriter.println(mDestroyed);
                printwriter.print(s);
                printwriter.print("mRetaining=");
                printwriter.print(mRetaining);
                printwriter.print(" mRetainingStarted=");
                printwriter.print(mRetainingStarted);
                printwriter.print(" mListenerRegistered=");
                printwriter.println(mListenerRegistered);
                if (mPendingLoader != null)
                {
                    printwriter.print(s);
                    printwriter.println("Pending Loader ");
                    printwriter.print(mPendingLoader);
                    printwriter.println(":");
                    this = mPendingLoader;
                    s = (new StringBuilder()).append(s).append("  ").toString();
                } else
                {
                    return;
                }
            } while (true);
        }

        final void finishRetain()
        {
            if (mRetaining)
            {
                if (LoaderManagerImpl.DEBUG)
                {
                    (new StringBuilder("  Finished Retaining: ")).append(this);
                }
                mRetaining = false;
                if (mStarted != mRetainingStarted && !mStarted)
                {
                    stop();
                }
            }
            if (mStarted && mHaveData && !mReportNextStart)
            {
                callOnLoadFinished(mLoader, mData);
            }
        }

        public final void onLoadComplete(Loader loader, Object obj)
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("onLoadComplete: ")).append(this);
            }
            if (mDestroyed)
            {
                boolean _tmp = LoaderManagerImpl.DEBUG;
            } else
            {
                if (mLoaders.get(mId) != this)
                {
                    boolean _tmp1 = LoaderManagerImpl.DEBUG;
                    return;
                }
                LoaderInfo loaderinfo = mPendingLoader;
                if (loaderinfo != null)
                {
                    if (LoaderManagerImpl.DEBUG)
                    {
                        (new StringBuilder("  Switching to pending loader: ")).append(loaderinfo);
                    }
                    mPendingLoader = null;
                    mLoaders.put(mId, null);
                    destroy();
                    installLoader(loaderinfo);
                    return;
                }
                if (mData != obj || !mHaveData)
                {
                    mData = obj;
                    mHaveData = true;
                    if (mStarted)
                    {
                        callOnLoadFinished(loader, obj);
                    }
                }
                LoaderInfo loaderinfo1 = (LoaderInfo)mInactiveLoaders.get(mId);
                if (loaderinfo1 != null && loaderinfo1 != this)
                {
                    loaderinfo1.mDeliveredData = false;
                    loaderinfo1.destroy();
                    mInactiveLoaders.remove(mId);
                }
                if (mActivity != null && !hasRunningLoaders())
                {
                    mActivity.mFragments.startPendingDeferredFragments();
                    return;
                }
            }
        }

        final void reportStart()
        {
            if (mStarted && mReportNextStart)
            {
                mReportNextStart = false;
                if (mHaveData)
                {
                    callOnLoadFinished(mLoader, mData);
                }
            }
        }

        final void retain()
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Retaining: ")).append(this);
            }
            mRetaining = true;
            mRetainingStarted = mStarted;
            mStarted = false;
            mCallbacks = null;
        }

        final void start()
        {
            if (mRetaining && mRetainingStarted)
            {
                mStarted = true;
            } else
            if (!mStarted)
            {
                mStarted = true;
                if (LoaderManagerImpl.DEBUG)
                {
                    (new StringBuilder("  Starting: ")).append(this);
                }
                if (mLoader == null && mCallbacks != null)
                {
                    mLoader = mCallbacks.onCreateLoader(mId, mArgs);
                }
                if (mLoader != null)
                {
                    if (mLoader.getClass().isMemberClass() && !Modifier.isStatic(mLoader.getClass().getModifiers()))
                    {
                        throw new IllegalArgumentException((new StringBuilder("Object returned from onCreateLoader must not be a non-static inner member class: ")).append(mLoader).toString());
                    }
                    if (!mListenerRegistered)
                    {
                        mLoader.registerListener(mId, this);
                        mListenerRegistered = true;
                    }
                    mLoader.startLoading();
                    return;
                }
            }
        }

        final void stop()
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Stopping: ")).append(this);
            }
            mStarted = false;
            if (!mRetaining && mLoader != null && mListenerRegistered)
            {
                mListenerRegistered = false;
                mLoader.unregisterListener(this);
                mLoader.stopLoading();
            }
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            stringbuilder.append("LoaderInfo{");
            stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringbuilder.append(" #");
            stringbuilder.append(mId);
            stringbuilder.append(" : ");
            DebugUtils.buildShortClassTag(mLoader, stringbuilder);
            stringbuilder.append("}}");
            return stringbuilder.toString();
        }

        public LoaderInfo(int i, Bundle bundle, LoaderManager.LoaderCallbacks loadercallbacks)
        {
            this$0 = LoaderManagerImpl.this;
            super();
            mId = i;
            mArgs = bundle;
            mCallbacks = loadercallbacks;
        }
    }

}