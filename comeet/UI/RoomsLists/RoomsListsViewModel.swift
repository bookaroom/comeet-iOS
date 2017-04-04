//
//  RoomsListsViewModel.swift
//  comeet
//
//  Created by Ricardo Contreras on 3/25/17.
//  Copyright © 2017 teamawesome. All rights reserved.
//

import Foundation

class RoomsListsViewModel : BaseViewModel {
    
    let authenticator: AuthenticatorProtocol
    let fetcher: FetcherProtocol
    private let metroarea: String
    private let roomsLists: [RoomList]
    
    init(authenticator: AuthenticatorProtocol, fetcher: FetcherProtocol, metroarea: String, roomsLists: [RoomList]) {
        self.metroarea = metroarea
        self.roomsLists = roomsLists
        self.authenticator = authenticator
        self.fetcher = fetcher
    }
    
    func title() -> String {
        return "Locations in " + metroarea
    }
    
    func roomsListsCount() -> Int {
        return roomsLists.count
    }
    
    func roomsListName(index: Int) -> String {
        guard roomsLists.count > index else {
            return ""
        }
        return roomsLists[index].name
    }
    
    func roomsList(index: Int) -> RoomList {
        return roomsLists[index]
    }
    
    func getMetroarea() -> String {
        return metroarea
    }
}