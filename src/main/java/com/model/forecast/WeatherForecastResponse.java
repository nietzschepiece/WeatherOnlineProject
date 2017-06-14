package com.model.forecast;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.List;

/**
 * Created by cci on 21.05.2017.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class WeatherForecastResponse {

    List<DaysForecast> list;


    public List<DaysForecast> getList() {
        return list;
    }

    public void setList(List<DaysForecast> list) {
        this.list = list;
    }
}
