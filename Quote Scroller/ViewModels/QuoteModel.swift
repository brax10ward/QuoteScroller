//
//  QuoteModel.swift
//  Quote Scroller
//
//  Created by Braxton Ward on 9/13/22.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }

}
