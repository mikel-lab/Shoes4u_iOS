//
//  ProductsView.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 3/7/22.
//
import SwiftUI

struct ProductsView: View {
    
    @StateObject var viewmodel = ProductsViewModel()
    @State private var searchText = ""
    func botonazo(){
        print("Navego hacia atrás")
    }
    
    private let gridItems: [GridItem] = [
        
        .init(.flexible(minimum: 100, maximum: 300), spacing: 10),
        .init(.flexible(minimum: 100, maximum: 300), spacing: 10),
        
    ]
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 20) {
                
                VStack(alignment: .center, spacing: 5) {
                    
                    Image("Shoes4u")
                        .resizable()
                        .frame(width: 80, height: 16, alignment: .center )
                    HStack {
                        Button(action: {
                            botonazo()
                        }) {
                            Image(systemName: "arrow.backward")
                        }
                        
                        
                        TextField("Search ...", text: $searchText)
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                        Image(systemName: "bag")
                    }
                    Image("runner")
                        .resizable()
                        .frame(width: 358, height: 370, alignment: .center )
                        .cornerRadius(10.0)
                    
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: gridItems, spacing: 10) {
                        
                        if let zapatilla = viewModel.products {
                            ForEach(zapatilla){data in
                                ProductView()

                            }
                        }
                        
                       /* Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                        */
                        
                    }
                    
                }
                
            }
            
        }
        .padding(.horizontal)
        .background(Color.EqButtonAction)
        
    }
}


/* struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
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
} */
