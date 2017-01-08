package io.relayr.demo.thermometer;

import android.app.Application;

public class MyHomeWeatherApplication extends Application
{

    @Override
    public void onCreate()
    {
        super.onCreate();
        RelayrSdkInitializer.initSdk(this);
    }
}
