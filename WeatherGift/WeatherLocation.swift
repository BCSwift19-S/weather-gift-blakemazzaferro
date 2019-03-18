//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Blake Mazzaferro on 3/17/19.
//  Copyright © 2019 Blake Mazzaferro. All rights reserved.
//

import Foundation
import Alamofire

class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather(){
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        Alamofire.request(weatherURL).responseJSON(completionHandler: { response in
            print(response)
        })
    }
}
