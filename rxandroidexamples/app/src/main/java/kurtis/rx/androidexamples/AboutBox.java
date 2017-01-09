package kurtis.rx.androidexamples;

import android.content.Context;
import android.content.pm.PackageManager;

/**
 * Created by cyber on 2017-01-09.
 */
public class AboutBox {

  static String VersionName(Context context) {
    try {
      return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
    } catch (PackageManager.NameNotFoundException e) {
      return "unknow";
    }
  }

  
}
