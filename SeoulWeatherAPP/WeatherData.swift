//
//  WeatherData.swift
//  SeoulWeatherAPP
//
//  Created by 곽희상 on 2022/04/25.
//

import Foundation

struct WeatherData:Codable{
    var weather: Weather
    var main: Main
}

struct Weather: Codable {
    var main: String
}

struct Main: Codable {
    var temp: Double
}

