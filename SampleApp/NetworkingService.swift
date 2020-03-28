
//
//  NetworkingService.swift
//  SampleApp
//
//  Created by Maica Zapanta on 3/27/20.
//  Copyright © 2020 Maica Zapanta. All rights reserved.
//

import Foundation
import Alamofire


class NetworkingService {
    
    static let shared = NetworkingService()
    private init () {}
    
    func getCoffees(completion:() -> Void)
    {
        let request = AF.request("https://perfecto.mayonlabs.com/menu/items/")
        
        request.responseJSON { (data) in
            print(data)
        }
    }
}
