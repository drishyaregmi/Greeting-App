//
//  ViewController.swift
//  Greeting
//
//  Created by Regmi, Drishya on 6/5/25.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var timeOfDay: UISegmentedControl!
    @IBOutlet weak var message: UILabel!
    
    @IBAction func showMessage(_ sender: UIButton) {
        var userName = "Stranger"
        if name.text != "" {
            userName = name.text!
        }
        if timeOfDay.selectedSegmentIndex == 0 {
            message.text = "Good morning, \(userName)!"
        }else if timeOfDay.selectedSegmentIndex == 1 {
            message.text = "Good afternoon, \(userName)!"
        }else {
            message.text = "Good night, \(userName)!"
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //exits keyboard when u touch anywhere on the screen; override belongs to parent contorller
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        name.resignFirstResponder()
        self.view.endEditing(true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.name.delegate = self
        name.becomeFirstResponder()
    }


}

