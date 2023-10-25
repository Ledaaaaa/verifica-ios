//
//  ProfiloViewController.swift
//  AppVerifica
//
//  Created by Leda Fregoni on 12/07/23.
//

import UIKit

class ProfiloViewController: UIViewController {
    
    @IBOutlet weak var FullName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var labalVerify: UILabel!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userPasswors: UILabel!
    
    @IBAction func login(_ sender: UIButton) {
        
        if (FullName.text=="verifica@movies.app" && password.text=="test"){
            performSegue(withIdentifier: "goHome", sender: self)
           
        }
        else {
            labalVerify.text="Non sei iscritto"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
        
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

