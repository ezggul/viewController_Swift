//
//  ikinciViewController.swift
//  viewControllerProjesi
//
//  Created by Ezgi Gül on 25.10.2024.
//

import UIKit

class ikinciViewController: UIViewController {

    @IBOutlet weak var ikinciLabel: UILabel!
    @IBOutlet weak var bulunanSifreLabel: UILabel!
    
    var verilenSifre = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        bulunanSifreLabel.text = verilenSifre
    }


}
