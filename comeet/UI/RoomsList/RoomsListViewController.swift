//
//  RoomsListViewController.swift
//  comeet
//
//  Created by Ricardo Contreras on 3/6/17.
//  Copyright © 2017 teamawesome. All rights reserved.
//

import UIKit

class RoomsListViewController: UIViewController {
    
    var viewModel: RoomsListViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

private extension RoomsListViewController {
    
    func setup() {
        viewModel?.roomsBinding = { [weak self] (rooms) in
            print(rooms)
        }
    }
}
