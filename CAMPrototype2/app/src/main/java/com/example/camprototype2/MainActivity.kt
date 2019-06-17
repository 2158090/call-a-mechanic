package com.example.camprototype2

import android.content.Intent
import android.os.Bundle
import android.support.v7.app.AppCompatActivity;

import kotlinx.android.synthetic.main.activity_main.*
import kotlinx.android.synthetic.main.content_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        setSupportActionBar(toolbar)
        /*
        loginButton.setOnClickListener {
            startActivities(Intent(this, loginPage::class.java))
        }

        signupButton.setOnClickListener {
            startActivities(Intent(this, signuppage::class.java))
        }
        */
        signupButton.setOnClickListener {
            startActivity(Intent(this, signupButton::class.java))
        }

        loginButton.setOnClickListener {
            startActivity(Intent(this, loginButton::class.java))
        }
    }
}
