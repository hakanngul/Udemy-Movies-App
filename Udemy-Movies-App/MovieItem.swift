//
//  MovieItem.swift
//  Udemy-Movies-App
//
//  Created by Hakan Gül on 02/07/2023.
//

import SwiftUI

struct MovieItem: View {

    var movie = Movie()
    var width = 130.0
    var body: some View {
        VStack(spacing: 5) {
            Image(movie.image!)
                .resizable()
                .frame(width: width)
            Text(movie.name!).foregroundColor(.gray)
            Text("Add Basket")
                .padding(5)
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom, 5)
                .onTapGesture {
                    print("Movie Item Page \(movie.name!) added on the basket")
                }
        }.background(Rectangle().fill(.white).shadow(radius: 3))
    }
}

//struct MovieItem_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieItem()
//    }
//}
