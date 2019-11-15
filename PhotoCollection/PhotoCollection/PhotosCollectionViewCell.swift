//
//  PhotosCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Lambda_School_Loaner_218 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    var photo: Photo? {
        
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var photoLabel: UILabel!
    
    func updateViews() {
        guard let photo = photo else { return }
        
        photoImage.image = UIImage(data: photo.imageData)
        photoLabel.text = photo.title
        
        
    }
    
    
}
