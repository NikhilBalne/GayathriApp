//
//  ViewController.swift
//  Gayathri
//
//  Created by Nikhil Balne on 15/12/20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    private var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mark: Phone Number TextField Placeholder i.e hint Color Customization.
//        phoneNumberTextField.attributedPlaceholder = NSAttributedString(string: "9988998899",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red:112/255.0,green:112/255.0,blue:112/255.0,alpha:0.1)])
        
        // Mark: Rounding Bottom View and Continue Button
        bottomView.roundCorners(corners: [.topLeft, .topRight], radius: 57)
        continueButton.roundCorners(corners: [.topRight,.bottomLeft,.bottomRight], radius: 20)
    }

    @IBAction func needHelpButtonTapped(_ sender: Any) {
        loginViewModel.dialNumber(number: "+91 9059139019")
    }
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        print("Continue Tapped")
    }
    
}

extension LoginViewController : UITextFieldDelegate {
    
    //Mark: Restricting the PhoneNumberTextField to 10 Characters Only
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        let enableResult = loginViewModel.enableingButtonOnFillingPhoneNumber(textField)
        
        if enableResult == true {
            continueButton.isEnabled = true
            continueButton.backgroundColor = UIColor(red: 80/255.0, green: 227/255.0, blue: 194/255.0, alpha: 1)
        } else {
            continueButton.isEnabled = false
            continueButton.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.03)
        }
        
    }
    
}
