//
//  Cafeteria.swift
//  UITableViewCornell
//
//  Created by Barış Savaş on 16.02.2023.
//

import Foundation

enum CafeteriaRating {
    case terrible
    case bad
    case moderate
    case good
    case great
}
enum NetworkSpeed {
    case good
    case moderate
    case terrible
}
class Cafeteria {
    var name: String
    var isFavorite: Bool
    var rating: CafeteriaRating
    var networkSpeed: NetworkSpeed
    init(name: String, isFavorite: Bool, rating: CafeteriaRating, networkSpeed: NetworkSpeed) {
        self.name = name
        self.isFavorite = isFavorite
        self.rating = rating
        self.networkSpeed = networkSpeed
    }
    func getRatingString() -> String {
        switch rating {
        case .terrible:
            return "Terrible Tarak Kurek Falan Filan"
        case .bad:
            return"Bad"
        case .moderate:
            return "Moderate"
        case .good:
            return "Good"
        case .great:
            return "Great"
        }
    }
    func getNetworkSpeedString() -> String {
        switch networkSpeed {
        case .good:
            return "Good"
        case .moderate:
            return "Moderate"
        case .terrible:
            return "Terrible"
        }
    }
}
