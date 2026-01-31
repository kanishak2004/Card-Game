//
//  Item.swift
//  L1 Demo
//
//  Created by Kanishk thakur on 30/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
