//
//  Endpoints.swift
//  comeet
//
//  Created by Ricardo Contreras on 3/12/17.
//  Copyright © 2017 teamawesome. All rights reserved.
//

import Foundation

struct Endpoints {
    
    let environment: Environment
    
    func getRooms() -> String {
        return environment.rawValue + "/rooms"
    }
}