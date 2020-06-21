//
//  BusView.swift
//  SwiftUIMVVM
//
//  Created by Paul Ramsay on 21/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import SwiftUI

struct BusView: View {
    
    let service: BusService
    
    init(service: BusService) {
        self.service = service
    }
    
    var body: some View {
        HStack {
            Text(service.name)
                .bold()
                .cornerRadius(15)
                .background(Color(.red))
            Text(service.description)
                .underline()
        }
    }
}
