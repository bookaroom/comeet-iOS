//
//  AuthenticatorProtocol.swift
//  comeet
//
//  Created by Ricardo Contreras on 3/6/17.
//  Copyright © 2017 teamawesome. All rights reserved.
//

import Foundation

typealias TokenCompletion = (String?, Error?)-> Void

protocol AuthenticatorProtocol {
    func getToken(completion:@escaping TokenCompletion)
    func isLoggedIn() -> Bool
    func logout()
}
