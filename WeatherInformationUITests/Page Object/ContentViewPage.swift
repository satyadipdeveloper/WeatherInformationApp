//
//  ContentViewPage.swift
//  WeatherInformationUITests
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import Foundation
import XCTest

class ContentViewPage {
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var cityTextField: XCUIElement {
        app.textFields["cityTextField"]
    }
    
    var launch_Navigation_bar : XCUIElement {
        app.navigationBars["Weather Information"]
    }
    
    var settings_Navigation_bar : XCUIElement {
        app.navigationBars["Settings"]
    }
    
    var addCity_Navigation_bar : XCUIElement {
        app.navigationBars["Add City"]
    }
    
    var button_add : XCUIElement {
        app.buttons["Add"]
    }
    
    var add_navigation_bar : XCUIElement {
        app.navigationBars.buttons["Add"]
    }
    
    var settings_nav_bar : XCUIElement {
        app.navigationBars["Weather Information"].buttons["Settings"]
    }
    
    var btn_save : XCUIElement {
        app.buttons["save"]
    }
    
    var btn_settings_done : XCUIElement {
        app.navigationBars.buttons["Done"]
    }
    
    var btn_close : XCUIElement {
        app.navigationBars.buttons["Close"]
    }
    
}

