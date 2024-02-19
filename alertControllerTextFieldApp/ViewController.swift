//
//  ViewController.swift
//  alertControllerTextFieldApp
//
//  Created by Jonah Whitney on 2/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Log in", message: "Enter Password", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "Password Here"
            textField.isSecureTextEntry = true})
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.labelResult.text = savedText.text})
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
}

