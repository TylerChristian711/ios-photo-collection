//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Lambda_School_Loaner_218 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    var themeHelper: ThemeHelper?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func selectDarkTheme(_ sender: Any) {
        themeHelper?.setThemePreferenceDark()
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func selectBlueTheme(_ sender: Any) {
        themeHelper?.yourColorHere()
        dismiss(animated: true, completion: nil)
    }
    
   

}
