package tech.onpaper.tryoutretrofit.Service;


import retrofit2.http.GET;
import retrofit2.http.Query;
import rx.Observable;
import tech.onpaper.tryoutretrofit.models.WeatherData;

/**
 * Created by cyber on 2016-12-23.
 */

public interface WeatherService {
   //http://api.openweathermap.org/data/2.5/weather?q=London
    //http://api.openweathermap.org/data/2.5/weather?q=London&appid=695e06b929c7bd06b84993ec12009f83

   // @GET("weather?appid=695e06b929c7bd06b84993ec12009f83")
    //Observable<WeatherData>  getWeatherData(@Query("q") String City);

    @GET("weather?appid=695e06b929c7bd06b84993ec12009f83")
    Observable<WeatherData>  getWeatherData(@Query("q") String City);


}
