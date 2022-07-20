//
//  TabBarView.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 4/7/22.
//

import SwiftUI

struct TabBarView: View {
    
    //Enlazarlo con el VIEWROUTER
    
    var body: some View {
        TabView() {
            
            ProductsView()
                .tabItem {
                    
                    Label(
                        "tab_products",
                        systemImage: "person.2.crop.square.stack"
                    )
                    
                }
                //.tag(Tab.products)
            
            Text("Favoritos")
                .tabItem {
                    
                    Label(
                        "tab_favorites",
                        systemImage: "doc.richtext"
                    )
                    
                }
                //.tag(Tab.favorites)
            
            Text("Más buscadas")
                .tabItem {
                    
                    Label(
                        "tab_buscadas",
                        systemImage: "gear"
                    )
                    
                }
                //.tag(Tab.buscadas)
            
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
