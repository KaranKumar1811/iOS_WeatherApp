//
//  WeatherURLManager.swift
//  iOS_WeatherApp
//
//  Created by MacStudent on 2020-01-17.
//  Copyright © 2020 Karan. All rights reserved.
//

import Foundation
class WeatherURLManager {
    static func getCityWeatherURL(city: String)->URL? {
    let city = city.replacingOccurrences(of: " ", with: "%20")
        
        let urlString = "http://api.openweathermap.org/data/2.5/weather?q=\(city)&units=metric&appid=617ad664055b1c7cebe17d578fa1116e"
        return URL(string: urlString)
    }
   static func getWeatherIconUrl(iconCode:String)->URL?
    {
        let urlString = "https://openweathermap.org/img/w/\(iconCode).png"
        return URL(string: urlString)
    }
    static func getForecastWeatherURL(city: String)->URL?{
           
        let city = city.replacingOccurrences(of: " ", with: "%20")
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&units=metric&appid=617ad664055b1c7cebe17d578fa1116e"
           return URL(string: urlString)
       }
       
}
