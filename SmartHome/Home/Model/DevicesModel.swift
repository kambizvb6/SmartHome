//
//  DevicesModel.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-24.
//

import Foundation

struct DevicesModel: Identifiable, Equatable {
    let id = UUID().uuidString
    var isSelected: Bool
    let gradientStart: String
    let gradientEnd: String
    let iconOn: String
    let iconOff: String
    let titleOne: String
    let colorLight: String
    let colorDark: String
    let titleTwo: String
}

struct DeviceData {
    static let Devices = [
        DevicesModel(isSelected: true, gradientStart: "SmartSpotlightStart", gradientEnd: "SmartSpotlightEnd", iconOn: "SmartSpotlight", iconOff: "SmartSpotlightDark", titleOne: "Smart", colorLight: "OnColor", colorDark: "OffColor", titleTwo: "Spotlight"),
        DevicesModel(isSelected: false, gradientStart: "SmartSpeakerStart", gradientEnd: "SmartSpeakerEnd", iconOn: "SmartSpeacker", iconOff: "SmartSpeackerDark", titleOne: "Smart", colorLight: "OnColor", colorDark: "OffColor", titleTwo: "Speaker"),
        DevicesModel(isSelected: false, gradientStart: "SmartTVStart", gradientEnd: "SmartTVEnd", iconOn: "SmartTV", iconOff: "SmartTVDark", titleOne: "Smart", colorLight: "OnColor", colorDark: "OffColor", titleTwo: "TV")
    ]
}

struct Weather: Hashable, Identifiable {
    let id = UUID()
    
    let dayOfWeek: String
    let imageName: String
    let temprature: Int
}

struct WeatherData {
    static let Weathers = [
        Weather(dayOfWeek: "MON", imageName: "cloud.drizzle.fill", temprature: 32),
        Weather(dayOfWeek: "TUS", imageName: "sun.dust.fill", temprature: 32),
        Weather(dayOfWeek: "WEN", imageName: "sun.max.fill", temprature: 32),
        Weather(dayOfWeek: "TUR", imageName: "moon.stars.fill", temprature: 32),
        Weather(dayOfWeek: "FRI", imageName: "cloud.sun.bolt.fill", temprature: 32)
    ]
}

