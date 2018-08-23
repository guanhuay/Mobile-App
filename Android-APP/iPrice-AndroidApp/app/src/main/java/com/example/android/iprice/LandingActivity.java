package com.example.android.iprice;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class LandingActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_landing);

        // Find the View that shows the home activity
        Button home = (Button) findViewById(R.id.getstart_button);

        // Set a click listener on that View
       home.setOnClickListener(new View.OnClickListener() {
            // The code in this method will be executed when the numbers View is clicked on.
            @Override
            public void onClick(View view) {
                Intent homeIntent = new Intent(LandingActivity.this, HomeActivity.class);
                startActivity(homeIntent);
            }
        });
    }
}
