//
//  PhotoController.swift
//  PhotoCollection
//
//  Created by Lambda_School_Loaner_218 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import Foundation

class PhotoController {
    
    var photos: [Photo] = []
    
    
    
    
    func createPhoto(with imageData: Data, title: String) {
        let photo = Photo(imageData: imageData, title: title)
        
        photos.append(photo)
    }
    
    
    func update(photo: Photo, with imageData: Data, and title: String) {
        guard let index = photos.index(of: photo) else { return }
              
              var scratch = photo
              
              scratch.imageData = imageData
              scratch.title = title
              
              photos.remove(at: index)
              photos.insert(scratch, at: index)
    }
    
    
}
