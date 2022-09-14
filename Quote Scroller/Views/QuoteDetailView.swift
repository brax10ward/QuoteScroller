//
//  QuoteDetialView.swift
//  Quote Scroller
//
//  Created by Braxton Ward on 9/13/22.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote: Quote
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text(quote.author)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(quote.longQuote)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(quote: model.quotes.first!)
    }
}
