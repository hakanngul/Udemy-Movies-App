//
//  Category.swift
//  Udemy-Movies-App
//
//  Created by Hakan Gül on 02/07/2023.
//

import Foundation

class Category : Identifiable {
    var id:Int?
    var name:String?
    
    init(id:Int, name:String) {
        self.id = id
        self.name = name.description.capitalized
    }
    
    init() {
        
    }

}
