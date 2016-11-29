package tech.onpaper.materialsignup;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.AppCompatButton;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import butterknife.Bind;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class activity_login extends AppCompatActivity {
    private static final String TAG = "activity_login";

    @Bind(R.id.InputName)
    EditText InputName;
    @Bind(R.id.textEmailAddress)
    EditText textEmailAddress;
    @Bind(R.id.btn_signup)
    AppCompatButton btnSignup;
    @Bind(R.id.link_login)
    TextView linkLogin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        ButterKnife.bind(this);

        btnSignup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                signup();
            }
        });


    }

    private void signup() {
        Log.d(TAG, "signup: ");

    }


}
