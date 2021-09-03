//
//  ViewController.swift
//  myNotes
//
//  Created by Pedro Léda on 31/08/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    // MARK: Outlets
    @IBOutlet weak var textViewCampo: UITextView!
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewCampo.text = getNotes()
    }
    
    // MARK: Actions
    @IBAction func saveNotes(_ sender: Any) {
        if let texto = textViewCampo.text {
            UserDefaults.standard.setValue(texto, forKey: "notes")
        }
    }
    
    // MARK: Methods
    func getNotes() -> String {
        if let text = UserDefaults.standard.object(forKey: "notes"){
            return text as! String
        }
        return ""
    }


}

