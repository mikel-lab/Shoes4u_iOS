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
        .background(Color.EqButtonAction)
        
    }
}


struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
