//
//  ViewController.swift
//  Prework
//
//  Created by Rohan Makkar on 8/20/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.Textbox.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var Textbox: UITextField!
    func getRandomColor() -> UIColor {
         //Generate between 0 to 1
         let red:CGFloat = CGFloat(drand48())
         let green:CGFloat = CGFloat(drand48())
         let blue:CGFloat = CGFloat(drand48())

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    @IBAction func TextEnter(_ sender: UIButton) {
        ChangeText()
    }
    @IBAction func ButtonClicked(_ sender: Any) {
        TextLabel.textColor = getRandomColor()
    }
    
    @IBAction func Background(_ sender: Any) {
        self.view.backgroundColor = getRandomColor()
    }
    func ChangeText(){
        let text = Textbox.text
        TextLabel.text = text
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        ChangeText()
        return true
    }
}
