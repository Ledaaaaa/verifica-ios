//
//  ListViewController.swift
//  AppVerifica
//
//  Created by Leda Fregoni on 12/07/23.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let films = [
        "Monaco",
        "Bella Parigi",
        "Mangiare a Vienna",
        "Vivere a Londra",
        "Lo zoo di Berlino",
        "La Monaca",
        "Mangia prega ama"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
}
extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
           performSegue(withIdentifier: "FirstViewController", sender: nil)
        } else if indexPath.row == 1 {
           performSegue(withIdentifier: "SecondViewController", sender: nil)
        } else if indexPath.row == 2 {
            performSegue(withIdentifier: "3ViewController", sender: nil)
         }
    }
}
extension ListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = films[indexPath.row]
        return cell
    }
    
}
