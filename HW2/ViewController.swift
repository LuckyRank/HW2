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
        
        setupViewColor()
}
    
    @IBAction func redSliderAction() {
        redCounter.text = String(format: "%.2f", redSlider.value)
        setupViewColor()
    }
    
    @IBAction func greenSliderAction() {
        greenCounter.text = String(format: "%.2f", greenSlider.value)
        setupViewColor()
    }
    
    @IBAction func blueSliderAction() {
        blueCounter.text = String(format: "%.2f", blueSlider.value)
        setupViewColor()
    }
    
    private func setupViewColor() {
        viewColored.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}
