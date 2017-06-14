package com.model.forecast;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

/**
 * Created by cci on 21.05.2017.
 */
public class DaysForecast {

    String dt;
    String dayOfWeek;
    int dayOfMonth;
    String  month;
    WeatherTemp temp;
    float pressure;
    int humidity;
    List<DetailedWeather> weather;

    public String getDt() {return dt;}

    public void setDt(long timestamp) {
        LocalDate date =  Instant.ofEpochSecond(timestamp).atZone(ZoneId.systemDefault()).toLocalDate();;
        this.dayOfWeek = date.getDayOfWeek().name().toLowerCase();
        this.dayOfMonth = date.getDayOfMonth();
        this.month = date.getMonth().name().toLowerCase();
    }

    public WeatherTemp getTemp() {
        return temp;
    }

    public void setTemp(WeatherTemp temp) {
        this.temp = temp;
    }

    public float getPressure() {
        return pressure;
    }

    public void setPressure(float pressure) {
        this.pressure = pressure;
    }

    public int getHumidity() {
        return humidity;
    }

    public void setHumidity(int humidity) {
        this.humidity = humidity;
    }

    public List<DetailedWeather> getWeather() {
        return weather;
    }

    public void setWeather(List<DetailedWeather> weather) {
        this.weather = weather;
    }

    public String getDayOfWeek() {return dayOfWeek;}

    public int getDayOfMonth() {return dayOfMonth;}

    public String  getMonth() {return month;}

}
