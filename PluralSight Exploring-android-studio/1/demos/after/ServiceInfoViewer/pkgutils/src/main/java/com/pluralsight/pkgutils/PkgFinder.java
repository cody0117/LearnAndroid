package com.pluralsight.pkgutils;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

/**
 * Helper class for finding package details given the component name of
 * an app.
 *
 */
public class PkgFinder {

	/**
	 * Given a ComponentName, which can be acquired from multiple sources,
	 * this method will return the data directory for the package in which
	 * this component belongs.  For example, if you have a ComponentName
	 * object corresponding to an Activity, this method will give you the
	 * data directory location for the application package which owns
	 * the Activity.
	 *
	 * @param context   The context object for the application calling this method
	 * @param name      The ComponentName object in which you would like to get the package data directory
	 * @return          The fully qualified path name for the package, or null if
	 *                  the ComponentName is null or invalid.
	 */
    public static String getPkgDataLocation(Context context, ComponentName name) {
    	String                 ret = null;

    	if (name != null) {
    		PackageManager pmgr = context.getPackageManager();
        	try {
				ret = pmgr.getPackageInfo(name.getPackageName(), 0).applicationInfo.dataDir;
			} catch (NameNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}

    	return ret;
    }
}
