//
//  Shoes4uApp.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 11/6/22.
//

import SwiftUI
import Firebase

@main
struct Shoes4uApp: App {
    var body: some Scene {
        WindowGroup {
            ProductsView(products: [Product(
                id: UUID(),
                category:"Baloncesto",
                description:"Zapatillas que sirven para jugar al baloncesto",
                imagenUrl:
                "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.lavanguardia.com%2Ffiles%2Fcontent_image_mobile_filter%2Fuploads%2F2021%2F09%2F02%2F61309fe9cc88d.png&imgrefurl=https%3A%2F%2Fwww.lavanguardia.com%2Fcomprar%2Fmoda-belleza%2F20210903%2F7694958%2Fentrenamientos-zapatillas-deportivas-marca-affi-a2s.html&tbnid=_vZCqCA5NN-puM&vet=12ahUKEwi04Y7n8Pr4AhX1gc4BHRz4DjoQMygLegUIARDgAw..i&docid=RGKFi53BvfXg3M&w=449&h=362&q=zapatillas%20deportivas&client=safari&ved=2ahUKEwi04Y7n8Pr4AhX1gc4BHRz4DjoQMygLegUIARDgAw",
                name:"Zapatillas de baloncesto",
                price:
                40)])
        }
    }
}
