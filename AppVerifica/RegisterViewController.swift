//
//  RegisterViewController.swift
//  AppVerifica
//
//  Created by Leda Fregoni on 12/07/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var FullName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var password2: UITextField!
    
    @IBAction func register(_ sender: UIButton) {
        if (FullName.text=="verifica@movies.app" && password.text=="test" && password.text=="test"){
            performSegue(withIdentifier: "goHome2", sender: self)
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
