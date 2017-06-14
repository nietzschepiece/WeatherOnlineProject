package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.List;

/**
 * Created by ccciobanu on 3/6/2017.
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class NowWeatherResponse {

    CoordWeather coord;
    List<DescriptionWeather> weather;
    NowWeather main;
    WindWeather wind;
    SysWeather sys;
    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SysWeather getSys() {
        return sys;
    }

    public void setSys(SysWeather sys) {
        this.sys = sys;
    }

    public WindWeather getWind() {
        return wind;
    }

    public void setWind(WindWeather wind) {
        this.wind = wind;
    }

    public CoordWeather getCoord() {
        return coord;
    }

    public void setCoord(CoordWeather coord) {
        this.coord = coord;
    }

    public List<DescriptionWeather> getWeather() {
        return weather;
    }

    public void setWeather(List<DescriptionWeather> weather) {
        this.weather = weather;
    }

    public NowWeather getMain() {
        return main;
    }

    public void setMain(NowWeather main) {
        this.main = main;
    }
}
