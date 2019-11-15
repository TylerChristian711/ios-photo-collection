//
//  ThemeHelper.swift
//  PhotoCollection
//
//  Created by Lambda_School_Loaner_218 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_218. All rights reserved.
//

import Foundation

class ThemeHelper {
    
   
    
    func setThemePreferenceDark() {
        UserDefaults.standard.set("Dark", forKey: .themePreferenceKey)
        }
 
    func yourColorHere() {
        UserDefaults.standard.set("Blue", forKey: .themePreferenceKey)
        }
    
    var themePreference: String? {
     return UserDefaults.standard.string(forKey: .themePreferenceKey)
    }
    init() {
        guard themePreference == nil else { return }
        setThemePreferenceDark()
    }
    
}


extension String {
     static var themePreferenceKey = "themePreferenceKey"
}
