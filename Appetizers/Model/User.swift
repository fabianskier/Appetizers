//
//  User.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-18.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
