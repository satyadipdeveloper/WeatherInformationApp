//
//  WeatherInformationUITests.swift
//  WeatherInformationUITests
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import XCTest
@testable import WeatherInformation


class WeatherInformationUITests: XCTestCase {
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
    
    func testShouldDisplayAddCityInTitle() {
        contentViewPage.add_navigation_bar.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.addCity_Navigation_bar.exists)
    }
    
    func testShouldDiplaySaveButton()  {
        contentViewPage.add_navigation_bar.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.button_add.exists)
    }
    
    func testCityTextFiledIsExists() {
        contentViewPage.add_navigation_bar.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.cityTextField.exists)
    }
    
    func testDefaultTextEntryShouldBePlaceholderTest() {
        contentViewPage.add_navigation_bar.tap()
        timer.wait(for: 0.5)
        XCTAssertEqual(contentViewPage.cityTextField.value as! String, "Enter City")
    }
    
    func testShouldDisplaySettingsInTitle() {
        contentViewPage.settings_nav_bar.tap()
        timer.wait(for: 0.5)
        XCTAssert(contentViewPage.settings_Navigation_bar.exists)
    }
    
    override func tearDown() {
        super.tearDown()
        timer = nil
    }
}
