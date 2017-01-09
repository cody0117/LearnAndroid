package udacity.com.sunshine.app;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by user on 2015-03-18.
 */
public class WeatherDataParser {

    public static  double getMaxTemperatureForDay(String weatherJsonStr,int dayIndex) throws JSONException
    {
        JSONObject weather = new JSONObject(weatherJsonStr);
        JSONArray days = weather.getJSONArray("list");
        JSONObject dayInfo = days.getJSONObject(dayIndex);
        JSONObject temperatureInfo=dayInfo.getJSONObject("temp");
        return temperatureInfo.getDouble("max") ;
    }

}
