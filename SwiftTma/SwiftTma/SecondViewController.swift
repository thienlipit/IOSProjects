//
//  SecondViewController.swift
//  SwiftTma
//
//  Created by Tran Minh Thien on 18/04/2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelSecondScreen: UILabel!
    var someData: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second View Controller"
        
        labelSecondScreen.text = someData

        // Do any additional setup after loading the view.
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
