//
//  CoinRowView.swift
//  CryptoSwiftUI
//
//  Created by co2 on 31/07/23.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .foregroundColor(.orange)
            
            // coin name info
            VStack(alignment: .leading,spacing:4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading,6)
            }
            .padding(.leading,2)
            
            Spacer()
            
            // coin price info
            VStack(alignment: .trailing,spacing:4) {
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.caption)
                    .padding(.leading,6)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
