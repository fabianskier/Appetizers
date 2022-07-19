//
//  Appetizer.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-14.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizerOne = Appetizer(id: 1,
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           price: 8.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 300,
                                           protein: 14,
                                           carbs: 0)
    
    static let sampleAppetizerTwo = Appetizer(id: 2,
                                           name: "Blackened Shrimp",
                                           description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                           price: 6.99,
                                           imageURL: "blackened-shrimp",
                                           calories: 450,
                                           protein: 4,
                                           carbs: 3)
    
    static let sampleAppetizerThree = Appetizer(id: 3,
                                           name: "Buffalo Chicken Bites",
                                           description: "The tasty bites of chicken have just the right amount of kick to them.",
                                                price: 7.49,
                                           imageURL: "buffalo-chicken-bites",
                                           calories: 800,
                                           protein: 5,
                                           carbs: 22)
    
    static let sampleAppetizerFour = Appetizer(id: 4,
                                           name: "Chicken Avocado Spring Roll",
                                           description: "These won't last 10 seconds once they hit the table.",
                                               price: 12.99,
                                           imageURL: "chicken-avocado-spring-roll",
                                           calories: 480,
                                           protein: 7,
                                           carbs: 19)
    
    static let appetizers = [sampleAppetizerOne,
                             sampleAppetizerTwo,
                             sampleAppetizerThree,
                             sampleAppetizerFour]
    
    static let orderItems = [sampleAppetizerOne,
                             sampleAppetizerTwo,
                             sampleAppetizerThree,
                             sampleAppetizerFour]
}
