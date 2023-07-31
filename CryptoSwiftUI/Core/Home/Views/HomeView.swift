//
//  HomeView.swift
//  CryptoSwiftUI
//
//  Created by co2 on 31/07/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // top movers view
                TopMoversView()
                
                // divider
                Divider()
                
                // all coin view
                AllCoinsViews(viewModel: viewModel)
            }.navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
