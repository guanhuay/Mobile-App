//
//  ViewController.swift
//  DateMatch
//
//  Created by Guanhua Yang on 2016-05-22.
//  Copyright (c) 2016 Guanhua Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Property

    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Gender: UISegmentedControl!
    
    @IBOutlet weak var Birthday: UIDatePicker!
    
    @IBOutlet weak var HeightRange: UISlider!
    
    @IBOutlet weak var Height: UILabel!
    
    @IBOutlet weak var hasJob: UISwitch!
    
    @IBOutlet weak var hasHome: UISwitch!
    
    @IBOutlet weak var Result: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Changeheight(sender: AnyObject) {
        var slider  = sender as! UISlider
        var i = Int(slider.value)
        slider.value = Float(i)
        Height.text = "\(i)cm"
    }
    
    @IBAction func Submit(sender: AnyObject) {
        
        let genderText = Gender.selectedSegmentIndex==0 ? "Male" : "Female"
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        
        let currentdate = NSDate()
        
        let components = gregorian!.components(NSCalendarUnit.NSYearCalendarUnit, fromDate: Birthday.date, toDate: currentdate, options: NSCalendarOptions(rawValue: 0))
        
        let age = components.year
        
        let hasjob = hasJob.on ? "has job" : "has no job"
        
        let hashome = hasHome.on ? "has home" : "has no home"
        // add the exclamation point would help to get rid of the optional("text") problem!
        Result.text = "\(Name.text!), \(age) years old, \(genderText), Height \(Height.text!), \(hasjob),\(hashome), I am waiting for you!"
        
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        textField.resignFirstResponder()
        return true
    }
}

