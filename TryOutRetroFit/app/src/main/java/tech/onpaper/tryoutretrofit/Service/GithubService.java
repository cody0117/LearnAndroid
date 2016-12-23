package tech.onpaper.tryoutretrofit.Service;

import retrofit2.http.GET;
import retrofit2.http.Path;
import rx.Observable;
import tech.onpaper.tryoutretrofit.models.Github;

/**
 * Created by cyber on 2016-12-23.
 */

public interface GithubService {

    /*{
  "login": "cyrsis",
  "id": 731087,
  "avatar_url": "https://avatars.githubusercontent.com/u/731087?v=3",
  "gravatar_id": "",
  "url": "https://api.github.com/users/cyrsis",
  "html_url": "https://github.com/cyrsis",
  "followers_url": "https://api.github.com/users/cyrsis/followers",
  "following_url": "https://api.github.com/users/cyrsis/following{/other_user}",
  "gists_url": "https://api.github.com/users/cyrsis/gists{/gist_id}",
  "starred_url": "https://api.github.com/users/cyrsis/starred{/owner}{/repo}",
  "subscriptions_url": "https://api.github.com/users/cyrsis/subscriptions",
  "organizations_url": "https://api.github.com/users/cyrsis/orgs",
  "repos_url": "https://api.github.com/users/cyrsis/repos",
  "events_url": "https://api.github.com/users/cyrsis/events{/privacy}",
  "received_events_url": "https://api.github.com/users/cyrsis/received_events",
  "type": "User",
  "site_admin": false,
  "name": "Victor",
  "company": null,
  "blog": null,
  "location": "Hong Kong",
  "email": "em3888@gmail.com",
  "hireable": true,
  "bio": "C# Programmer, Mobile Developer 2016 (Maybe)",
  "public_repos": 180,
  "public_gists": 0,
  "followers": 0,
  "following": 8,
  "created_at": "2011-04-15T08:28:30Z",
  "updated_at": "2016-12-19T10:58:00Z"
}
*/
    @GET("users/{username}")
    Observable<Github> getGitHubUser(@Path("username") String userName);
}
