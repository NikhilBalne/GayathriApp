//
//  LoginViewModel.swift
//  Gayathri
//
//  Created by Nikhil Balne on 04/01/21.
//

import UIKit

struct LoginViewModel {
    
    func dialNumber(number : String) {

     if let url = URL(string: "tel://\(number)"),
       UIApplication.shared.canOpenURL(url) {
          if #available(iOS 10, *) {
            UIApplication.shared.open(url, options: [:], completionHandler:nil)
           } else {
               UIApplication.shared.openURL(url)
           }
       } else {
                // add error message here
       }
    }
    
    func enableingButtonOnFillingPhoneNumber(_ textField: UITextField) -> Bool {
        
        if textField.text?.count == 10 {
            textField.resignFirstResponder()
            return true
        } else {
            return false
        }
        
    }
    
}
