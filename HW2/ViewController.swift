//
//  ViewController.swift
//  HW2
//
//  Created by Данил Прозоров on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewColored: UIView!
    
    @IBOutlet weak var redCounter: UILabel!
    @IBOutlet weak var greenCounter: UILabel!
    @IBOutlet weak var blueCounter: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColored.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        var redSliderValue = CGFloat(redSlider.value)
        var greenSliderValue = CGFloat(greenSlider.value)
        var blueSliderValue = CGFloat(blueSlider.value)
        
        viewColored.backgroundColor = .init(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: <#CGFloat#>)
    }
    
    @IBAction func redSliderAction() {
        redCounter.text = String(redSlider.value)
        var redSliderValue = CGFloat(redSlider.value)
    }
    
    
    @IBAction func greenSliderAction() {
        greenCounter.text = String(greenSlider.value)
       var greenSliderValue = CGFloat(greenSlider.value)
    }

   @IBAction func blueSliderAction() {
       blueCounter.text = String(blueSlider.value)
        var blueSliderValue = CGFloat(blueSlider.value)
   }
    
    
}


