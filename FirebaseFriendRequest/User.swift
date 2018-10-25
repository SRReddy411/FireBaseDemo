//
//  User.swift
//  FirebaseFriendRequest
//
//  Created by RamiReddy on 7/10/18.
//  Copyright © 2018 RamiReddy. All rights reserved.
//

import Foundation

class User {
    
    var email: String!
    var id: String!
    
    init(userEmail: String, userID: String) {
        self.email = userEmail
        self.id = userID
    }
    
}
