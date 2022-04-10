//
//  AddCityUITests.swift
//  WeatherInformationUITests
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import XCTest

class AddCityUITests: XCTestCase {
    private var app : XCUIApplication!
    private var contentViewPage: ContentViewPage!
    var timer : Timer!
    
    override func setUp() {
        app = XCUIApplication()
        contentViewPage = ContentViewPage(app: app)
        continueAfterFailure = false
        timer = Timer()
        app.launch()
    }
        
    func testSavingAfterEnteringWrongInputShouldNavigatePreviousScreen()  {

        contentViewPage.add_navigation_bar.tap()
        contentViewPage.cityTextField.tap()
        contentViewPage.cityTextField.tap()
        contentViewPage.cityTextField.typeText("Londonnnnn") // Checking with wrong city name
        let saveButton = contentViewPage.btn_save
        saveButton.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.addCity_Navigation_bar.exists)
    }
    
    func testSavingAfterEnteringCorrectInputShouldNavigatePreviousScreen()  {

        contentViewPage.add_navigation_bar.tap()
        contentViewPage.cityTextField.tap()
        contentViewPage.cityTextField.typeText("London") // Checking with correct city name
        contentViewPage.btn_save.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.launch_Navigation_bar.exists)
    }
    
    func testCloseButtonPressShouldNavigatePreviusScreen() {
        contentViewPage.add_navigation_bar.tap()
        timer.wait(for: 0.5)
        contentViewPage.btn_close.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.launch_Navigation_bar.exists)
    }
    
    func testAlertAvailabilityviewForWrongCityInput() {
        contentViewPage.add_navigation_bar.tap()
        contentViewPage.cityTextField.tap()
        contentViewPage.cityTextField.typeText("Londonsss") // Checking with correct city name
        contentViewPage.btn_save.tap()
        timer.wait(for: 2)
        XCTAssert(app.alerts.element.exists)
    }

    override func tearDown() {
        super.tearDown()
        timer = nil
    }
}
