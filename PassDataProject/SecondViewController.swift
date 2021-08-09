//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Артем Хребтов on 17.04.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func goBackTap(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSeque", sender: nil)
    }
    var login: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        lable.text = "Hello \(login)"
    }
    @IBOutlet weak var lable: UILabel!
    
}
