//
//  Constants.swift
//  WeatherInformation
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import Foundation

struct Constants {
    static let appID = "ef0fd9866ca027e0dca474cee84c53be"
    static let unit = {
        return (UserDefaults.standard.value(forKey: "unit") as? String) ?? "imperial"
    }
}
