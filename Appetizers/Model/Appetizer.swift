//
//  Appetizer.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-14.
//

import Foundation

struct Appetizer: Codable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Appetizer name sample",
                                           description: "Appetizer description sample",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 11,
                                           carbs: 5)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
