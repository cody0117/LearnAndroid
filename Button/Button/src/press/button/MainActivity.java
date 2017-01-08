package press.button;

import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends Activity {

	Button btn;
	TextView tv;
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        tv = (TextView) findViewById(R.id.msgView1);
        btn = (Button) findViewById(R.id.button1); 
        btn.setOnClickListener(new MyListener());
	}
    
	class MyListener implements OnClickListener {
	
            @Override
			public void onClick(View arg0) {
	          
            	tv.setText(R.string.Reply);}
	}
}	

