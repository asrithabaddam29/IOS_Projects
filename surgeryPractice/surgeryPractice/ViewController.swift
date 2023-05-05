//
//  ViewController.swift
//  surgeryPractice
//
//  Created by Baddam,Asritha on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var patientName: UITextField!
    
    
    @IBOutlet weak var surgeryType: UITextField!
    
    
    
    @IBOutlet weak var surgeryCost: UITextField!
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func costCalculation(_ sender: Any) {
        var pn = patientName.text!
        var st = surgeryType.text!
        var sc = Double(surgeryCost.text!)!
        
        if(pn == "" || st == ""){
            image.image = UIImage(named: "noResults")
            displayLabel.text = "Enter all the details"
            
        }else if(pn == "Kayle" && st == "Heart"){
            var totalCost = round(((sc*(1+11.75/100))-500)*100) / 100.0
            image.image = UIImage(named: "Heart")
            displayLabel.text = "\(pn):\rTotal cost for Heart🫀 surgery is $\(totalCost)"
        }else if(pn == "John" && st == "Brain"){
            var totalCost = round((sc*(1+13.5/100)-750)*100) / 100.0
            image.image = UIImage(named: "Brain")
            displayLabel.text = "\(pn):\rTotal cost for Brain🧠 surgery is $\(totalCost)"
            
        }else{
            var totalCost = round((sc*(1+6.25/100)-350)*100) / 100.0
            image.image = UIImage(named: "Knee")
            displayLabel.text = "\(pn):\rTotal cost for Knee🦿 replacement surgery is $\(totalCost)"
        }
                    
        
    }
    

}

