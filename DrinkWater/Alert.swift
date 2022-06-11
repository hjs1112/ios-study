//
//  Alert.swift
//  DrinkWater
//
//  Created by Bo-Young PARK on 2021/07/20.
//

import Foundation

struct Alert: Codable {
    var id: String = UUID().uuidString
    let date: Date
    var isOn: Bool
    
    var time: String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        return timeFormatter.string(from: date)
    }
    
    var meridiem: String {
        let meridiemFormatter = DateFormatter()
        meridiemFormatter.locale = Locale(identifier: "ko")
        meridiemFormatter.dateFormat = "a"
        return meridiemFormatter.string(from: date)
    }
}
