//
//  Quote.swift
//  Quote Scroller
//
//  Created by Braxton Ward on 9/13/22.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id: UUID?
    var author: String
    var shortQuote: String
    var longQuote: String
    var image: String
}
