//
//  ContentView.swift
//  Quote Scroller
//
//  Created by Braxton Ward on 9/13/22.
//

import SwiftUI

struct QuotesScrollerView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                ForEach(model.quotes) { quote in
                    NavigationLink {
                        QuoteDetailView(quote: quote)
                    } label: {
                        QuoteCardView(quote: quote)
                    }
                    .navigationTitle("Quotes")
                }
                .padding([.top, .leading, .trailing])
            }
        }
    }
}

struct QuotesScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScrollerView()
    }
}
