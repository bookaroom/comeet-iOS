//
//  FakeAuthenticator.swift
//  comeet
//
//  Created by Ricardo Contreras on 3/19/17.
//  Copyright © 2017 teamawesome. All rights reserved.
//

import Foundation
@testable import comeet

class FakeAuthenticator: AuthenticatorProtocol
{
    public var token: String?
    public var error: Error?
    
    func getToken(completion:@escaping TokenCompletion) {
        completion(token, error)
    }
}
