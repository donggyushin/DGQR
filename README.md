# DGQR

<img src="https://user-images.githubusercontent.com/34573243/152682041-f553ceb6-d1b2-419e-8dd3-ffc6ac6b7216.png" width=250 /> <br/>
DGQR is a lightweight, pure-Swift library for rendering qr. It provides you a chance to use a pure-Swift way to work with qr image in your next app. 

## Features
- [x] Drawing qr code image from ```string``` value
- [x] Return a image value from ```string``` value 

## Usage
The simplest use-case is setting an image to an image view with the ```UIImageView``` extension: 
```
import DGQR

let imageView = UIImageView()
imageView.dq.setQr(from: "value typed of string")
```

## Requirements
- iOS 12.0+
- Swift 5.0+

## Installation
### Swift Package Manager
- File > Swift Packages > Add Package Dependency
- Add ```https://github.com/donggyushin/DGQR.git```

## CocoaPods
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

target 'MyApp' do
  pod 'DGQR', :git => 'https://github.com/donggyushin/DGQR.git'
end
```
