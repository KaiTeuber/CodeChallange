//
//  UserController.swift
//  CodeChallange
//
//  Created by Kai-Marcel Teuber on 16.09.19.
//  Copyright © 2019 App-Developers.de. All rights reserved.
//

import Foundation

final class UserController {
    
    // MARK: - init
    
    init() {
        self.user = nil
    }
    
    // MARK: - overrides
    
    // MARK: - public
    
    public var isLoggedIn: Bool {
        return user != nil
    }
    
    public var userId: Int? {
        return user?.id
    }

    public func login(id: Int, name: String) {
        user = User(id: id, name: name)
    }
    
    public func logout() {
        user = nil
    }
    
    // MARK: - private
    
    private var user: User?
}

