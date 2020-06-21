//
//  ContentView.swift
//  SwiftUIMVVM
//
//  Created by Paul Ramsay on 21/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            VStack {
                /// This seems to only work 1 way because Swift UI is weird and massively broken apparently.
                /// As with MVVM we pass in a view model into our next view.
                NavigationLink(destination: BusServicesView(busServiceViewModel: BusServiceViewModel())) {
                    Text("Go to tableview")
                }
           }
        }
    }
}
