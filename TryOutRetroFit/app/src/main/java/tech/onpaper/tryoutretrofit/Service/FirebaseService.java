package tech.onpaper.tryoutretrofit.Service;

import retrofit2.http.GET;
import retrofit2.http.Path;
import rx.Observable;
import tech.onpaper.tryoutretrofit.models.Firebase;

/**
 * Created by cyber on 2016-12-23.
 */
//https://checkitout-44ee6.firebaseio.com/bio.json

public interface FirebaseService {

    @GET("bio.json")
    Observable<Firebase> getData();
}
