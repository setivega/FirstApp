//
//  NameViewController.swift
//  First
//
//  Created by Seti Vega on 8/5/17.
//  Copyright © 2017 SetiVega. All rights reserved.
//

import UIKit

class NameViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var firstnameTextField: UITextField!
    @IBOutlet var lastnameTextField: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(NameViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(NameViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        self.firstnameTextField.delegate = self
        self.lastnameTextField.delegate = self
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Moves view controller when keyborad appears and hides
    func keyboardWillShow(sender: NSNotification) {
    self.view.frame.origin.y = -135
    }
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0
    }
    
    //Next and Return buttons
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 0 {
            lastnameTextField.becomeFirstResponder()
        }else if textField.tag == 1{
            textField.resignFirstResponder()
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

