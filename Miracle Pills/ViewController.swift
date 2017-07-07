//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Frank Solleveld on 29-06-17.
//  Copyright © 2017 Frank Solleveld. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var postalCodeLbl: UILabel!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states: Array = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        postalCodeLbl.isHidden = true
        zipTextField.isHidden = true
        countryLbl.isHidden = true
        countryTextField.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        postalCodeLbl.isHidden = false
        zipTextField.isHidden = false
        countryLbl.isHidden = false
        countryTextField.isHidden = false
    }
    @IBOutlet weak var buynowBtnAction: UIButton!

}

