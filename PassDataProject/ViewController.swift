//
//  ViewController.swift
//  PassDataProject
//
//  Created by Артем Хребтов on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passworgTF: UITextField!
    @IBAction func loginTap(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSequeToMainScreen(seque: UIStoryboardSegue){
        guard seque.identifier == "unwindSeque" else {return}
        guard let svc = seque.source as? SecondViewController else { return }
        self.result.text = svc.lable.text
    }
    
    @IBOutlet weak var result: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTF.text
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

