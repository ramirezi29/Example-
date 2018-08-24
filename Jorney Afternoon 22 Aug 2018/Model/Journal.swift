//
//  model.swift
//  Jorney Afternoon 22 Aug 2018
//
//  Created by Ivan Ramirez on 8/23/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

// 🧐#1 Create your Class
class Entry: Equatable {
    static func == (lhs:Entry, rhs: Entry) -> Bool {
        if lhs.timeStamp != rhs.timeStamp { return false }
        if lhs.title != rhs.title { return false }
        if lhs.text != rhs.text {return false}
        return true
    }
    
    //🧐 #2 Add properties
    
    var timeStamp: Date
    var title: String
    var text: String
    
    // 🧐 #3 Create Initializer
    init(timeStamp: Date = Date(), title: String, text: String) {
        self.timeStamp = timeStamp
        self.title = title
        self.text = text
    }
}

