//
//  ViewController.swift
//  ChineseZotiac
//
//  Created by Guanhua Yang on 2016-05-22.
//  Copyright © 2016 Guanhua Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthyear: UITextField!
    
    @IBOutlet weak var picture: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func confirm(sender: AnyObject) {
        birthyear.resignFirstResponder()
        
        if let year = Int(birthyear.text!){
            //year not nil
            let picturenum = ( year - offset)%12
            picture.image = UIImage(named: String(picturenum))
        }
        else{
            //notify user
        }
    }

}

