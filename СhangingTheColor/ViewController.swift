//
//  ViewController.swift
//  СhangingTheColor
//
//  Created by Klim Sk on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var changingColorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var labelForRedSlider: UILabel!
    @IBOutlet var labelForGreenSlider: UILabel!
    @IBOutlet var labelForBlueSlider: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changingColorView.layer.cornerRadius = 20
        slidersAction()
    }
    
    @IBAction func slidersAction() {
        labelForRedSlider.text = redSlider.value.formatted(.number.precision(.fractionLength(2)))
        labelForGreenSlider.text = greenSlider.value.formatted(.number.precision(.fractionLength(2)))
        labelForBlueSlider.text = blueSlider.value.formatted(.number.precision(.fractionLength(2)))
        
        changingColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    
}

