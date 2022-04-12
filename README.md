# WeatherInformation

**WeatherInformation** is a simple iPhone application which allows user to input city as per choice and App will display current temperature of that city. By default app will display temperature in Fahrenheit and user can also chagne temperature unit (Celcius and Fahrenheit) from settings screen. App will display temperature based on user selection. Used **OpenWeatherMap** API to get current weather information. 

WeatherInformation Application has been developed in Swift 5, following MVVM design pattern and Test-driven development approach. Code coverage is more than 90% in entire Application. Below screenshots shows Application structure and testcase results. 

<img width="943" alt="Code-coverageAndAppStructure" src="https://user-images.githubusercontent.com/103358766/162612049-928dbacb-d20c-4171-a135-67cd37102bde.png">

## Screens 

This the screen from where user can navigate to settings page and also move to next screen to Add City 

![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 08 40 24](https://user-images.githubusercontent.com/103365162/162876664-6f5c214a-4ce5-47de-8f7b-58035959db08.png)

 User is Adding city to check current weather

![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 09 04 00](https://user-images.githubusercontent.com/103365162/162876726-664fcb8f-b5e2-4e8d-a9de-de46153600d5.png)

Showing temperature in Fahrenheit 
 
![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 09 06 22](https://user-images.githubusercontent.com/103365162/162876772-1d58d0c8-38b5-463d-a693-5abb74380f01.png)

 User can change unit from this screen 
 
![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 08 40 53](https://user-images.githubusercontent.com/103365162/162876512-ffe55bc8-011c-46b5-b49c-727aab6db443.png)

 Showing temperature in Celcius
 
![Simulator Screen Shot - iPhone 13 Pro - 2022-04-12 at 09 04 36](https://user-images.githubusercontent.com/103365162/162876811-f33c4669-5d5f-473e-9b98-1fc0d78d315c.png)


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
