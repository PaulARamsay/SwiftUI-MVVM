//
//  BusServiceViewModel.swift
//  SwiftUIMVVM
//
//  Created by Paul Ramsay on 21/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class BusServiceViewModel {
    
    private let url = URL(string: "https://tfe-opendata.com/api/v1/services")
    var busServicesList = [BusService]()

    init() {
        self.fetchData()
    }

    private func fetchData() {
        guard let url = url else {
            return
        }
        
        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                return
            }

            do {
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                let busServices = try jsonDecoder.decode(BusServiceModel.self, from: data)
                self.busServicesList = busServices.services
            } catch let error {
                print(error)
            }
        }
        session.resume()
    }
}
