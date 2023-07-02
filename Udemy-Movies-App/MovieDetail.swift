    //
    //  MovieDetail.swift
    //  Udemy-Movies-App
    //
    //  Created by Hakan Gül on 02/07/2023.
    //

import SwiftUI

struct MovieDetail: View {
//    var movie = Movie(id: 1, name: "Django", year: 2020, image: "django", category: Category(id: 1, name: "aksiyon"), director: Director(id: 1, name: "Hakan GÜL"))
    var movie = Movie()
    var body: some View {
        VStack(spacing: 50) {
            Image(movie.image!)
            Text(movie.director!.name!).font(.system(size: 30))
            Text(String(movie.year!)).font(.system(size:50)).foregroundColor(.blue)
            // button
            Button("Add Basket") {
                print("Movie Detail Page \(movie.name!) added to basket")
                    
            }
            .font(.system(size: 20))
            .foregroundColor(.white)
            .frame(width: 250, height: 30)
            .padding()
            .background(.indigo)
            .cornerRadius(15)
        }.navigationTitle(movie.name!)
    }
}
//
//struct MovieDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDetail()
//    }
//}
