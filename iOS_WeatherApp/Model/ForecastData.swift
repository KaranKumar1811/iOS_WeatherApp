//
//  ForecastData.swift
//  iOS_WeatherApp
//
//  Created by MacStudent on 2020-01-17.
//  Copyright © 2020 Karan. All rights reserved.
//

import Foundation
class ForecastData{
    internal init(city: String,data : JSON) {
        
        self.cityName = city
        self.daytemp = "\(data["main"]["temp"].intValue)"
        self.lowTemp = "\(data["main"]["temp_min"].intValue)"
        self.highTemp = "\(data["main"]["temp_max"].intValue)"
        self.feelTemp = "\(data["main"]["feels_like"].intValue)"
        
        let date = Date(timeIntervalSince1970: data["dt"].doubleValue)
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "EEE, MMM, dd"
        let hourFormatter = DateFormatter()
        hourFormatter.dateFormat = "h:mm a"
        
        self.dateString = dateformatter.string(from: date)
        self.hour = hourFormatter.string(from: date)
        
        self.iconCode = data["weather"].arrayValue[0]["icon"].stringValue
    }
    
    var dateString: String
    var cityName: String
    var daytemp: String
    var lowTemp: String
    var highTemp: String
    var feelTemp: String
    var hour : String
    var iconCode : String
    
}
