//
//  DataService.swift
//  Quote Scroller
//
//  Created by Braxton Ward on 9/13/22.
//

import Foundation

class DataService {
        
    static func getLocalData() -> [Quote] {
        // Parse local json file
        
        // get a url path to the json file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        // check if pathstring is not nil, otherwise
        guard pathString != nil else {
            return [Quote]()
        }
        
        // create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // create a data object
            let data = try Data(contentsOf: url)
            
            // decode the json data
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for q in quoteData {
                    q.id = UUID()
                }
                
                return quoteData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [Quote]()
    }
}
