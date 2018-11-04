//
//  ViewController.swift
//  colorMagic
//
//  Created by Mohammed Mohsin Sayed on 10/26/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    func userDidChoose(color: UIColor, withName colorName: String, labelColor: UIColor) {
        
        self.view.backgroundColor = color
        self.colorNameLabel.text = colorName
        self.colorNameLabel.textColor = labelColor
    }
    

    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addColor" {
            
            guard let colorPickerVC = segue.destination as? ColorPickerVC else {return}
            colorPickerVC.delegate = self 
        }
    }

}

