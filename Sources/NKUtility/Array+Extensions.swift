//
//  File.swift
//  
//
//  Created by Naveen Keerthy on 6/14/24.
//

import Foundation

public extension Array {
    subscript(safeIndex index: Int) -> Iterator.Element? {
        return index >= 0 && index < endIndex ? self[index] : nil
    }
    
    var isNotEmpty: Bool{
        return !self.isEmpty
    }
}
