//
//  SeoulWeatherAPP++Bundle.swift
//  SeoulWeatherAPP
//
//  Created by 곽희상 on 2022/04/20.
//

import Foundation

extension Bundle {
    var apiKey: String{
        guard let file = self.path(forResource: "WeatherInfo", ofType: "plist") else { return ""}
        guard let resource = NSDictionary(contentsOfFile: file) else {return ""}
        guard let key = resource["API_KEY"] as? String else { fatalError("Weather Info.plist에 API_KEY설정을 해주세요")}
        return key
        
    }
}
