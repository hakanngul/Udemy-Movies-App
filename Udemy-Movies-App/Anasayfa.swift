//
//  Anasayfa.swift
//  Udemy-Movies-App
//
//  Created by Hakan Gül on 02/07/2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var categoriesList = [Category]()
    var body: some View {
        NavigationStack {
            List {
                ForEach(categoriesList) {category in
                    NavigationLink(destination: MoviesPage(category: category)) {
                        Text(category.name!)
                    }
                }
            }.navigationTitle("Categories")
                .onAppear() {
                    var list = [Category]()
                    list.append(Category(id: 1, name: "aksiyon".capitalized))
                    list.append(Category(id: 2, name: "dram".capitalized))
                    list.append(Category(id: 3, name: "bilim kurgu".capitalized))
                    categoriesList = list
                
                }
        }
    }
}

struct CategoryItem: View {
    var category = Category()
    var body: some View {
        Text(category.name!)
    }
}

struct Anasayfa_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
