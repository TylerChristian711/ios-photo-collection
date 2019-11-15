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
    
    
    func create(photo :Photo) {
        photos.append(photo)
    }
    
    func update(photo: Photo, data: Data, title: String) {
        
    }
    
    
}
