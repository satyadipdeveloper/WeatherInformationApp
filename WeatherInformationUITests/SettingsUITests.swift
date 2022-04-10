//
//  SettingsUITests.swift
//  WeatherInformationUITests
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import XCTest
@testable import WeatherInformation

class SettingsUITests: XCTestCase {
        
    private var app : XCUIApplication!
    private var contentViewPage: ContentViewPage!
    var timer : Timer!
    static let strCelcius = "Celcius"
    static let strFahrenheit = "Fahrenheit"
    
    override func setUp() {
        app = XCUIApplication()
        contentViewPage = ContentViewPage(app: app)
        timer = Timer()
        continueAfterFailure = false
        app.launch()
    }
        
    func testCelciusSelectionCellExistance() {
        contentViewPage.settings_nav_bar.tap()
        XCTAssert(app.tables.staticTexts[SettingsUITests.strCelcius].exists)
    }
    
    func testFahrenheitSelectionCellExistance() {
        contentViewPage.settings_nav_bar.tap()
        XCTAssert(app.tables.staticTexts[SettingsUITests.strFahrenheit].exists)
    }
    
    func testAppNavigateNextScreenAfterCelciusSelectionAndDoneButtonPressed() {
        contentViewPage.settings_nav_bar.tap()
        app.tables.staticTexts[SettingsUITests.strCelcius].tap()
        timer.wait(for: 0.5)
        contentViewPage.btn_settings_done.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.launch_Navigation_bar.exists)
    }
    
    func testAppNavigateNextScreenAfterFahrenheitSelectionAndDoneButtonPressed() {
        contentViewPage.settings_nav_bar.tap()
        app.tables.staticTexts[SettingsUITests.strFahrenheit].tap()
        timer.wait(for: 0.5)
        contentViewPage.btn_settings_done.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.launch_Navigation_bar.exists)
    }
    
    override func tearDown() {
        super.tearDown()
        timer = nil
    }
        
}
