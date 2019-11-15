//
//  PhotosCollectionViewController.swift
//  PhotoCollection
//
//  Created by Lambda_School_Loaner_218 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit



class PhotosCollectionViewController: UICollectionViewController {

    
    let photoController = PhotoController()
    let themeHelper = ThemeHelper()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddPhotoSegue" {
            if let addPhotoVc = segue.destination as? PhotoDetailViewController {
                guard let index = collectionView.indexPathsForSelectedItems?.first else { return }
            }
        }
    }
    

    // MARK: UICollectionViewDataSource



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotosCollectionViewCell else {return PhotosCollectionViewCell() }
        
        let photo = photoController.photos[indexPath.row]
        
        cell.photo = photo
        // Configure the cell
    
        return cell
    }
    
    
    func setTheme() {
        
        guard let theme = themeHelper.themePreference else { return }
        
    }



}
