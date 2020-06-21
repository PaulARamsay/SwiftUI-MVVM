//
//  BusServicesView.swift
//  SwiftUIMVVM
//
//  Created by Paul Ramsay on 21/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import SwiftUI

struct BusServicesView: View {
    
    let busServiceViewModel: BusServiceViewModel
    
    init(busServiceViewModel: BusServiceViewModel) {
        self.busServiceViewModel = busServiceViewModel
    }
    
    var body: some View {
        /// Very similar to a StackView, in that it is IN FACT a stack view.
        VStack {
            List {
                /// For each row, we'll create a view which we can initialise with our bus model.
                ForEach(0 ..< self.busServiceViewModel.busServicesList.count) {
                    BusView(service: self.busServiceViewModel.busServicesList[$0])
                }
            }
        /// We attach to our view. Seems like a weird place to do it, but it is what it is : /
        }.navigationBarTitle("Services")
    }
}
