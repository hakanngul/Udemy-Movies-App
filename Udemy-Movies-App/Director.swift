//
//  Director.swift
//  Udemy-Movies-App
//
//  Created by Hakan Gül on 02/07/2023.
//

import Foundation

class Director : Identifiable {
    var id:Int?
    var name:String?
    
    init(id:Int? = nil, name:String? = nil) {
        self.id = id
        self.name = name
    }
    
    init() {
        
    }

}

