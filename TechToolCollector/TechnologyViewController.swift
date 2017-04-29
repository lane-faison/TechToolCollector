//
//  TechnologyViewController.swift
//  TechToolCollector
//
//  Created by Lane Faison on 4/29/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

class TechnologyViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var techImageView: UIImageView!
    
    @IBOutlet weak var titleTextView: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
    }

    @IBAction func photosTapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func cameraTapped(_ sender: Any) {
    }
    @IBAction func addTapped(_ sender: Any) {
    }
}
