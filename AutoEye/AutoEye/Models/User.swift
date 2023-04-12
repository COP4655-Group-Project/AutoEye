//
//  User.swift
//  AutoEye
//
//  Created by Maggie LaFratta on 4/12/23.
//

import Foundation
import ParseSwift


struct User: ParseUser {
    // required by `ParseObject`
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // required by `ParseUser`
    var username: String?
    var email: String?
    var emailVerified: Bool?
    var password: String?
    var authData: [String: [String: String]?]?

    // custom properties
    var licensePlate: String?



}
