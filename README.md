# WeatherInformation

**WeatherInformation** is a simple iPhone application which allows user to input city as per choice and App will display current temperature of that city. By default app will display temperature in Fahrenheit and user can also chagne temperature unit (Celcius and Fahrenheit) from settings screen. App will display temperature based on user selection. Used **OpenWeatherMap** API to get current weather information. 

WeatherInformation Application has been developed in Swift 5, following MVVM design pattern and Test-driven development approach. Code coverage is more than 90% in entire Application. Below screenshots shows Application structure and testcase results. 

<img width="943" alt="Code-coverageAndAppStructure" src="https://user-images.githubusercontent.com/103358766/162612049-928dbacb-d20c-4171-a135-67cd37102bde.png">

## Screens 

This the screen from where user can navigate to settings page and also move to next screen to Add City 

![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 08 40 24](https://user-images.githubusercontent.com/103365162/162875774-1f0482f8-c741-4463-8d9d-aa25216391ee.png)

 User is Adding city to check current weather

![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 09 04 00](https://user-images.githubusercontent.com/103365162/162875879-f8f4698a-ad9f-4ebd-9727-64087704afb6.png)

Showing temperature in Fahrenheit 
 
 ![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 09 06 22](https://user-images.githubusercontent.com/103365162/162876035-309f7a2e-8591-4107-9c03-807c81e1a325.png)

 User can change unit from this screen 
 
 ![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 08 40 53](https://user-images.githubusercontent.com/103365162/162876086-b968e584-fa74-4c6f-bdc4-ebabe75feccd.png)
 
 Showing temperature in Celcius
 
 ![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 09 04 36](https://user-images.githubusercontent.com/103365162/162876149-041e0450-6e50-4d30-b9c0-9215bfe16b75.png)

## Supported version
- iOS 15 onwards  (Portrait mode only)

## Requirements
 Xcode 13+ , iOS Simulator/ iPhone Device (iOS 15 onwards) 

## How to build

1) Clone the repository
$ git clone https://github.com/satyadipios/WeatherInformation.git
2) Open Project files (main branch)
3) Open **WeatherInformation.xcworkspace** in Xcode and run in iOS 15+ devices (iPhone device/ Simulator) . Installation of Podfile is not required unless it gives any error to run. 

## Key Swift Features  
* Test-driven development 
* MVVM design pattern 
* Protocol-Oriented Programming 
* Network call (URLSession - Async/await)
* Dependency Injection
* Unit Tests
* UI Tests
* Swiftlint
* Storyboard 

## Pods 

  * pod 'MBProgressHUD'
  * pod 'ReachabilitySwift'
  * pod 'SwiftLint'
  

## Notes 
WeatherInformation application is tested in iPhone simulator (iOS 15.2) and not tested in real device. 
