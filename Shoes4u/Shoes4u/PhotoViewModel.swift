//
//  PhotoViewModel.swift
//  Shoes4u
//
//  Created by Mikel Cobian on 17/7/22.
//

import Foundation
import SwiftUI
import Combine

final class PhotoViewModel : ObservableObject {
    @Published var photo:Image?

    var suscriptor = Set<AnyCancellable>()

    func loadImage(url:String){
  
        //control de cache.
        
        // descarga de la imagen de Red
        let urlDownload = URL(string: url)!
        
        URLSession.shared
            .dataTaskPublisher(for: urlDownload)
            .map{
                UIImage(data: $0.data) //UIKIT
            }
            .map{ image -> Image in //SwiftUI
                if let imagen = image {
                    return Image(uiImage: imagen)
                }
                else {
                    return Image(systemName: "person.fill")
                }
            }
            .replaceError(with: Image(systemName: "person.fill"))
            .replaceEmpty(with: Image(systemName: "person.fill"))
            .receive(on: DispatchQueue.main)
            .sink{
                self.photo = $0
            }
            .store(in: &suscriptor)
    }

}
