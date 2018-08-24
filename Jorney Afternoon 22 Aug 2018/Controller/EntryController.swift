//
//  EntryController.swift
//  Jorney Afternoon 22 Aug 2018
//
//  Created by Ivan Ramirez on 8/23/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//


import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    //MARK: Source of Truth 🙌🏼
    
    var entries: [Entry] = []
    
    //MARK: Create
    
    func addEntryWith(title: String, text: String) {
        let newEntry = Entry(title: title, text: text)
        entries.append(newEntry)
    }
    
    //Mark:
    
    //Mark:
    
    //Mark:
    
    //Mark: Delete swipe 
    func deleteEntryWith(entry: Entry) {
        guard let index = entries.index(of: entry) else {return}
        entries.remove(at: index)
    }
    
}




