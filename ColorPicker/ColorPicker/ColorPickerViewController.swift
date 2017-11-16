//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Austin Beydler on 11/15/17.
//  Copyright © 2017 Austin Beydler. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    var indexColor = 0
    
    struct Color{
        var name: String
        var color: UIColor
    }
    
    var colors = [Color(name: "Red", color: UIColor.red),
                  Color(name: "Orange", color: UIColor.orange),
                  Color(name: "Yellow", color: UIColor.yellow),
                  Color(name: "Green", color: UIColor.green),
                  Color(name: "Blue", color: UIColor.blue),
                  Color(name: "Purple", color: UIColor.purple),
                  Color(name: "Brown", color: UIColor.brown),
                  ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView(picker, didSelectRow: indexColor, inComponent: indexColor)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].color
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
