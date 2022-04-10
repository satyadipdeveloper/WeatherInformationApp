//
//  WeatherListViewModel.swift
//  WeatherInformation
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import Foundation

class WeatherListViewModel {
    
    private(set) var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
    //MARK:- Convert Fahrenheit to Celsius
    
    private func toCelsius() {
        
        weatherViewModels = weatherViewModels.map { vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature - 32) * 5/9
            return weatherModel
        }
        
    }
    //MARK:- Convert Celsius to Fahrenheit
    
    private func toFahrenheit() {
        
        weatherViewModels = weatherViewModels.map { vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature * 9/5) + 32
            return weatherModel
        }
    }
    
    func updateUnit(to unit: Unit) {
        switch unit {
            case .celsius:
                toCelsius()
            case .fahrenheit:
                toFahrenheit()
        }
    }
}

class WeatherViewModel {

    let weather: WeatherResponse
    var temperature: Double

    init(weather: WeatherResponse) {
        self.weather = weather
        temperature = weather.main.temp
    }

    var city: String {
        return weather.name
    }

}



