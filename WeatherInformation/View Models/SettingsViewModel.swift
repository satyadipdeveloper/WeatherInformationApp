//
//  SettingsViewModel.swift
//  WeatherInformation
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import Foundation

// Mark:- set case values as per API request parameter demands

enum Unit: String, CaseIterable {
    case celsius = "metric"
    case fahrenheit = "imperial"
}

// Mark:- To Display unit on apploication screen

extension Unit {
    var displayName: String {
        get {
            switch(self) {
                case .celsius:
                    return "Celcius"
                case .fahrenheit:
                    return "Fahrenheit"
            }
        }
    }
}

class SettingsViewModel {
    
    let units = Unit.allCases
    
    // get and Set unit values
    
    var selectedUnit: Unit {
        get {
            let userDefaults = UserDefaults.standard
            let value = userDefaults.value(forKey: "unit") as? String ?? ""
            return value.isEmpty == true ? Unit.fahrenheit: Unit(rawValue: value) ?? Unit.fahrenheit
        }
        set {
            let userDefault = UserDefaults.standard
            userDefault.set(newValue.rawValue, forKey: "unit")
        }
    }
    
}
