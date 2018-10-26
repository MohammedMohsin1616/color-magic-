//
//  ColorPickerVC.swift
//  colorMagic
//
//  Created by Mohammed Mohsin Sayed on 10/26/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func colorButtonPressed(sender: UIButton) {
        
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!, labelColor: (sender.titleLabel?.textColor!)!)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
