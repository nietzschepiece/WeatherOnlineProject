
package com.controllers;

import com.model.NowWeatherResponse;
import com.model.forecast.WeatherForecastResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Controller
@PropertySource("api.properties")
public class WelcomeController {

    @Value("${application.message}")
    private String message;

    @Value("${api.appid}")
    private String appId;

    @Value("${api.url.city}")
    private String url;

    @Value("${api.url.forecast}")
    private String urlForecast;

    @RequestMapping("/")
    public String welcome(Model model) {

        return "searchPage";
    }

    /**
     * Endpoint with parameters  : /getWeather?city=Bucharest
     */
    @RequestMapping("/getWeather")
    public String welcome(Model model, @RequestParam String city ) {
        RestTemplate restTemplate = new RestTemplate();

        NowWeatherResponse resp = restTemplate.getForObject
                (url + city + appId, NowWeatherResponse.class);
        model.addAttribute("response",resp);
        model.addAttribute("mesaj",message);

        WeatherForecastResponse respForecast = restTemplate.getForObject
                (urlForecast + city + appId, WeatherForecastResponse.class);

        model.addAttribute("days", respForecast.getList());

        return "getWeatherPage";
    }

}
