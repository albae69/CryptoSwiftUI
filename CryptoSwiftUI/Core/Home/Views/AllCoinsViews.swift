//
//  AllCoinViews.swift
//  CryptoSwiftUI
//
//  Created by co2 on 31/07/23.
//

import SwiftUI

struct AllCoinsViews: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}
//
//struct AllCoinViews_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsViews()
//    }
//}
