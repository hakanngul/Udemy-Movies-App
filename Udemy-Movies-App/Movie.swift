//
//  Movie.swift
//  Udemy-Movies-App
//
//  Created by Hakan Gül on 02/07/2023.
//

import Foundation


class Movie : Identifiable {
    var id:Int?
    var name:String?
    var year:Int?
    var image:String?
    var category:Category?
    var director:Director?
    
    init(){
        
    }
    
    
    init(id:Int, name:String, year:Int, image:String,  category:Category, director:Director) {
        self.id = id
        self.name = name
        self.year = year
        self.image = image
        self.category = category
        self.director = director
    }
    
    
    
}
