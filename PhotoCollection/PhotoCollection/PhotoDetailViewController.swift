//
//  PhotoDetailViewController.swift
//  PhotoCollection
//
//  Created by Lambda_School_Loaner_218 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleText: UITextField!
    
    @IBAction func addPhoto(_ sender: Any) {
        
        let authorizationStatus = PHPhotoLibrary.authorizationStatus()
              
              switch authorizationStatus {
              case .authorized:
                  presentImagePickerController()
                  
              case .notDetermined:
                  
                  PHPhotoLibrary.requestAuthorization { (status) in
                      
                      guard status == .authorized else { NSLog("User did not authorize access to the photo library"); return }
                      
                      self.presentImagePickerController()
                  }
                  
              default:
                  break
              }
        
    }
    
    @IBAction func savePhoto(_ sender: Any) {
        guard let image = imageView.image,
            let imageData = image.pngData(),
                   let title = titleText.text else { return }
               
               
               if let photo = photo {
                   photoController?.update(photo: photo, with: imageData, and: title)
               } else {
                   photoController?.createPhoto(with: imageData, title: title)
               }
               
               navigationController?.popViewController(animated: true)
    }
    
    private func setTheme() {
        guard let themePreference = themeHelper?.themePreference else { return }
        
        var backgroundColor: UIColor!
        
        switch themePreference {
        case "Dark":
            backgroundColor = .lightGray
        case "Blue":
            backgroundColor = UIColor(red: 61/255, green: 172/255, blue: 247/255, alpha: 1)
        default:
            break
        }
        
        view.backgroundColor = backgroundColor
    }
    
    private func presentImagePickerController() {
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else { return }
        
        let imagePicker = UIImagePickerController()
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else { return }
        
        imageView.image = image
    }
    
    
    
    
    
    private func updateViews() {
        
        guard let photo = photo else {
            title = "Create Photo"
            return
        }
        
        title = photo.title
        
        imageView.image = UIImage(data: photo.imageData)
        titleText.text = photo.title
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    


}
