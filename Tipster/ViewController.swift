//
//  ViewController.swift
//  Tipster
//
//  Created by R on 03/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var groupdividedNumber: UILabel!
    @IBOutlet var numbers: [UIButton]!
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet var persentage: [UILabel]!
    
    @IBOutlet var numberInPercentage: [UILabel]!
    
    @IBOutlet var numberSumPercentage: [UILabel]!
    
    var inputNum = ""


    
    override func viewDidLoad() {
        super.viewDidLoad()


        }
    

    @IBAction func numberClicked(_ sender: UIButton) {
        for i in numbers{
            if sender.tag == i.tag{
                if sender.tag == 10{
                    inputNum = "0"
                    showLabel.text = inputNum
                }else{
                inputNum.append(i.titleLabel!.text!)
                showLabel.text = inputNum
                }
            }
        }
        guard let num0:Float = Float(showLabel.text!)! * Float(persentage[0].text!)! / 100 else{return}
         let num1 = Float(showLabel.text!)! * Float(persentage[1].text!)! / 100
         let num2 = Float(showLabel.text!)! * Float(persentage[2].text!)! / 100
        
        numberInPercentage[0].text = String(format: "%.02f", num0)
        numberInPercentage[1].text = String(format: "%.02f", num1)
        numberInPercentage[2].text = String(format: "%.02f", num2)
        
        let sumNum0 = num0 + Float(showLabel.text!)!
        let sumNum1 = num1 + Float(showLabel.text!)!
        let sumNum2 = num2 + Float(showLabel.text!)!

        numberSumPercentage[0].text = String(format: "%.02f", sumNum0)
        numberSumPercentage[1].text = String(format: "%.02f", sumNum1)
        numberSumPercentage[2].text = String(format: "%.02f", sumNum2)
    }
    
    @IBAction func TipSlider(_ sender: UISlider) {
        for i in persentage{
            let intsender = sender.value
            guard let num0:Float = Float(showLabel.text!)! * Float(persentage[0].text!)! / 100 else{return}
            let num1 = Float(showLabel.text!)! * Float(persentage[1].text!)! / 100
            let num2 = Float(showLabel.text!)! * Float(persentage[2].text!)! / 100

            if i.tag == 0{
                i.text! = String(format: "%.02f", 0 + intsender)
                numberInPercentage[0].text = String(format: "%.02f", num0)

            }else if i.tag == 1{
                i.text! = String(format: "%.02f", 10 + intsender)
                numberInPercentage[1].text = String(format: "%.02f", num1)
            }else{
                i.text! = String(format: "%.02f", 15 + intsender)
                numberInPercentage[2].text = String(format: "%.02f", num2)
            }
            let sumNum0 = num0 + Float(showLabel.text!)!
            let sumNum1 = num1 + Float(showLabel.text!)!
            let sumNum2 = num2 + Float(showLabel.text!)!

            numberSumPercentage[0].text = String(format: "%.02f", sumNum0)
            numberSumPercentage[1].text = String(format: "%.02f", sumNum1)
            numberSumPercentage[2].text = String(format: "%.02f", sumNum2)



            }

        }
    
    @IBAction func GroupSlider(_ sender: UISlider) {
        let senderNum = sender.value
        print(String(format: "%.02f", senderNum))
        
        groupdividedNumber.text  = "\(Int(senderNum))"
        
        guard let num0:Float = Float(showLabel.text!)! * Float(persentage[0].text!)! / 100 else{return}
        let num1 = Float(showLabel.text!)! * Float(persentage[1].text!)! / 100
        let num2 = Float(showLabel.text!)! * Float(persentage[2].text!)! / 100
        
        let num10 = num0 / senderNum
        let num11 = num1 / senderNum
        let num12 = num2 / senderNum
        
        numberInPercentage[0].text = String(format: "%.02f", num10)
        numberInPercentage[1].text = String(format: "%.02f", num11)
        numberInPercentage[2].text = String(format: "%.02f", num12)
        
        let sumNum0 = num0 + Float(showLabel.text!)!
        let sumNum1 = num1 + Float(showLabel.text!)!
        let sumNum2 = num2 + Float(showLabel.text!)!
        
        let numGroup0 = sumNum0 / senderNum
        let numGroup1 = sumNum1 / senderNum
        let numGroup2 = sumNum2 / senderNum



        numberSumPercentage[0].text = String(format: "%.02f", numGroup0)
        numberSumPercentage[1].text = String(format: "%.02f", numGroup1)
        numberSumPercentage[2].text = String(format: "%.02f", numGroup2)

        

    }
    

    
    
    }
    
    


