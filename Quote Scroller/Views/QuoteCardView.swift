//
//  QuoteCard.swift
//  Quote Scroller
//
//  Created by Braxton Ward on 9/13/22.
//

import SwiftUI

struct QuoteCardView: View {
    var quote: Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .clipped()
                .cornerRadius(5)
                .frame(height: 450)
            VStack(alignment: .leading, spacing: 10.0) {
                Text(quote.shortQuote)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text("- " + quote.author)
                    .font(.callout)
                    .fontWeight(.semibold)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        }
        .cornerRadius(10)
    }
}

struct QuoteCardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteCardView(quote: model.quotes.first!)
    }
}
