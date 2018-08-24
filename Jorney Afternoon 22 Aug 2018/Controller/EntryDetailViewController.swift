//
//  EntryDetailViewController.swift
//  Jorney Afternoon 22 Aug 2018
//
//  Created by Ivan Ramirez on 8/23/18.
//  Copyright © 2018 ramcomw. All rights reserved.
////🧐 #1 Drag out the action
//🧐 #2 Drag out the action, above view did load.
// 🧐#3 Inside the action, create an unwrapped variable  and set it equal to the outlets field dot properties (field.)
//🧐 #4 Called your shared controller to save that entry. your going to get some code from number 3

import UIKit

class EntryDetailViewController: UIViewController {
    
    @IBOutlet weak var textEntryField: UITextField!
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry? // *** This is my entry that i wil be using to segue the data. Lower cased entry  ************
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonPushed(_ sender: Any) {
        guard let titleTextiMadeUpThisName = textEntryField.text, let bodyTextiMadeUpThisName = bodyTextView else {return}
        
        
        EntryController.shared.addEntryWith(title: titleTextiMadeUpThisName, text: bodyTextiMadeUpThisName.text)
        
        
        navigationController?.popViewController(animated: true) // true. do you want it to work, true-yes
        
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}
