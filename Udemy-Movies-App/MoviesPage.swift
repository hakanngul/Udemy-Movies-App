    //
    //  ContentView.swift
    //  Udemy-Movies-App
    //
    //  Created by Hakan Gül on 02/07/2023.
    //

import SwiftUI

struct MoviesPage: View {
    @State private var moviesList = [Movie]()
    var category = Category(id: 1, name: "aksiyon")
    var body: some View {
        
        GeometryReader { geo in
            let screenWidth = geo.size.width
            let itemWidth = (screenWidth - 40) / 2
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(moviesList) {movie in
                        NavigationLink(destination: MovieDetail(movie: movie)) {
                            MovieItem(movie: movie, width: itemWidth)
                        }
                    }
                }
            }
            .padding(10)
            .navigationTitle(category.name!)
            .onAppear() {
                var list = [Movie]()
                let k1 = Category(id: 1, name: "aksiyon".capitalized)
                let k2 = Category(id: 2, name: "dram".capitalized)
                let k3 = Category(id: 3, name: "bilim kurgu".capitalized)
                let d1 = Director(id: 1, name: "Quentin Tarantino")
                let d2 = Director(id: 2, name: "Christopher Nolan")
                let d3 = Director(id: 3, name: "Nuri Bilge Ceylan")
                let d4 = Director(id: 4, name: "Roman Polanski")
                
                list.append(Movie(id: 1, name: "Django", year: 2014, image: "django", category: k1, director: d1))
                list.append(Movie(id: 2, name: "Interstaller", year: 2015, image: "interstellar", category: k3, director: d2))
                list.append(Movie(id: 3, name: "Inception", year: 2010, image: "inception", category: k3, director: d2))
                list.append(Movie(id: 4, name: "Bir Zamanlar Anadoluda", year: 2011, image: "birzamanlaranadoluda", category: k3, director: d3))
                list.append(Movie(id: 5, name: "The Pianist", year: 2008, image: "thepianist", category: k2, director: d4))
                list.append(Movie(id: 6, name: "The Hateful Eight", year: 2017, image: "thehatefuleight", category: k1, director: d1))
                
                moviesList = list.filter({$0.category!.id == category.id})
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesPage()
    }
}
