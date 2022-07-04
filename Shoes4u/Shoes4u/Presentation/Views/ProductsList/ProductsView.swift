//
//  ProductsView.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 3/7/22.
//

import SwiftUI

struct ProductsView: View {
    //var products: Product
    //@StateObject private var viewmodel = ProductsViewModel()
    @State private var searchText = ""
    private let gridItems: [GridItem] = [
       
        .init(.flexible(minimum: 100, maximum: 300), spacing: 10),
        .init(.flexible(minimum: 100, maximum: 300), spacing: 10),
        
    ]
    var body: some View {
     
        ZStack {
            
            Color(.green)
                .ignoresSafeArea()
            /*
             Color(.systemGroupedBackground)
                 .edgesIgnoringSafeArea(.all)
             */
            
            VStack(spacing: 20) {
                
                VStack(alignment: .center, spacing: 5) {
                    
                    Image("Shoes4u")
                        .resizable()
                        .frame(width: 80, height: 16, alignment: .center )
                    Text("Buscar \(searchText)")
                        .searchable(text: $searchText, prompt: "Encuentra tus zapatillas")
                        .navigationTitle("Searchable Example")
                    Image("runner")
                        .resizable()
                        .frame(width: 358, height: 370, alignment: .center )
                        .cornerRadius(10.0)
                    

                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                ScrollView(.vertical, showsIndicators: false) {
                   
                    LazyVGrid(columns: gridItems, spacing: 10) {
                        
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
                        Image("zapatilla_modelo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10.0)
                      
                            
                        }
                        
                    }
                    
                }

            }
            .padding(.horizontal)
            
        }
    }


struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
