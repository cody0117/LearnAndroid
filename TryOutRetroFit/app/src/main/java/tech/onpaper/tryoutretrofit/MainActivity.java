package tech.onpaper.tryoutretrofit;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import tech.onpaper.tryoutretrofit.Service.WeatherService;
import tech.onpaper.tryoutretrofit.models.WeatherData;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Working API
        //http://api.openweathermap.org/data/2.5/weather?q=London&appid=695e06b929c7bd06b84993ec12009f83

        Retrofit retrofit = new Retrofit.Builder()
                .addCallAdapterFactory(RxJavaCallAdapterFactory.create())
                .addConverterFactory(GsonConverterFactory.create())
                .baseUrl("http://api.openweathermap.org/data/2.5/")
                .build();

        WeatherService weatherService = retrofit.create(WeatherService.class);
        Observable<WeatherData> london = weatherService.getWeatherData("London");

        london.subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(weatherData -> {
                    Log.e("Current Weather", weatherData.getWeather()
                            .get(0)
                            .getDescription());
                    Log.e("Current location", weatherData.getCoord().getLat().toString());
                });
    }
}
