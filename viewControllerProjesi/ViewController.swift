//
//  ViewController.swift
//  viewControllerProjesi
//
//  Created by Ezgi Gül on 25.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var alinanSifre = ""
    
    
    override func viewDidLoad() { //sadece ilk oluşturulduğunda çağrılır
        super.viewDidLoad()
        print("view did load")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear ")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        textField.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    @IBAction func kontrolEtTiklandi(_ sender: Any) {
        
        alinanSifre = textField.text!
        performSegue(withIdentifier: " toIkinciVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == " toIkinciVC" {
            let destinationVC = segue.destination as! ikinciViewController
            destinationVC.verilenSifre = alinanSifre
        }
    }

}

