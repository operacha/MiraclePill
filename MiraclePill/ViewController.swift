//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ozair on 2016-10-24.
//  Copyright © 2016 Ozair. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var zipTxt: UITextField!
    @IBOutlet weak var zipTitle: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var countryTitle: UILabel!
    
    let provinces = ["Alberta","British Columbia", "Manitoba", "Saskatchewan", "Ontario", "Quebec", "Nova Scotia", "New Brunswick", "Prince Edward Island", "Newfoundland and Labrador", "Yukon", "Nunavut", "Northwest Territories"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        buyBtn.isHidden = true
        zipTxt.isHidden = true
        zipTitle.isHidden = true
        countryTxt.isHidden = true
        countryTitle.isHidden = true
    }
    
    @IBAction func buyBtnPressed(_ sender: AnyObject) {
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(provinces[row], for: UIControlState.normal)
        statePicker.isHidden = true
        buyBtn.isHidden = false
        zipTxt.isHidden = false
        zipTitle.isHidden = false
        countryTxt.isHidden = false
        countryTitle.isHidden = false
    }
}

