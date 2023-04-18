//
//  ViewController.swift
//  SwiftTma
//
//  Created by tmthien on 17/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonNavigation: UIButton!
    @IBOutlet weak var labelWelcome: UILabel!
    @IBOutlet weak var textFieldWelcome: UITextField!
    @IBOutlet weak var buttonWelcome: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Add a "Done" button to the keyboard toolbar
           let toolbar = UIToolbar()
           toolbar.sizeToFit()
           let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneButtonTapped))
           toolbar.items = [doneButton]
        textFieldWelcome.inputAccessoryView = toolbar

    }
    @objc func doneButtonTapped() {
        // Dismiss the keyboard
        textFieldWelcome.resignFirstResponder()
    }

    @IBAction func onButtonNavigationClicked(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.someData = textFieldWelcome.text!
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func onButtonWelcomeClicked(_ sender: Any) {
        labelWelcome.text = "Welcome " + textFieldWelcome.text!
    }
}
