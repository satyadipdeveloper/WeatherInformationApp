//
//  WeatherListViewModelTest.swift
//  WeatherInformationTests
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import XCTest
@testable import WeatherInformation


class WeatherListViewModelTest: XCTestCase {

    private var weatherListVM: WeatherListViewModel!

    override func setUp() {
        super.setUp()
        self.weatherListVM = WeatherListViewModel()
        self.setMockForWeatherListViewModel()
    }
    
    func setMockForWeatherListViewModel() {
        let weatherVM = WeatherViewModel(weather: WeatherResponse(name: "Kerala", main: Weather(temp: 40, humidity: 10)))
        self.weatherListVM.addWeatherViewModel(weatherVM)
    }
    
    func testToCelcius() {
        XCTAssertEqual(self.weatherListVM.numberOfRows(0), 1)
        XCTAssertNotNil(self.weatherListVM.modelAt(0))
        self.weatherListVM.updateUnit(to: Unit.celsius)
        let weatherModelcelsius = self.weatherListVM.modelAt(0)
        XCTAssertEqual(weatherModelcelsius.temperature, 4.444444444444445)
    }
    
    func testToFahrenheit() {
        self.weatherListVM.updateUnit(to: Unit.fahrenheit)
        let weatherModel = self.weatherListVM.modelAt(0)
        XCTAssertEqual(weatherModel.temperature, 104.0)
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
