package com.example.android.quakereport;

/**
 * Created by thug on 2017/7/26.
 */

public class Earthquake {
    // define the variable of Earthquake class
    private double mMagnitude;
    private String mLocation;
    private long mTimeInMillSeconds;
    private String mUrl;

    // Construtor of class
    public Earthquake(double magnitude, String location, long timeInMillSeconds, String url) {
        mMagnitude = magnitude;
        mLocation = location;
        mTimeInMillSeconds = timeInMillSeconds;
        mUrl = url;
    }

    // Define getter function for each private variable
    public double getMagnitude() {
        return mMagnitude;
    }

    public String getLocation() {
        return mLocation;
    }

    public long getTimeInMillSeconds() {
        return mTimeInMillSeconds;
    }

    public String getUrl() { return mUrl; }
}
