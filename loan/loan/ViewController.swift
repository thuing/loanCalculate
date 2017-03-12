//
//  ViewController.swift
//  loan
//
//  Created by 小福 on 2017/3/12.
//  Copyright © 2017年 小福. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loanAmountField: UITextField!
    @IBOutlet weak var loanTermField: UITextField!
    @IBOutlet weak var interestRateField: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        let calculate_1 = simpleCalculate()
        result.text = calculate_1.calculate(loanAmount: Double( loanAmountField.text!)!, years: Int( loanTermField.text!)!, interestRate: Double( interestRateField.text!)!).description
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


class simpleCalculate{
    //小驼峰命名法：第一个英文单词小写，后面所有单词首字母大写
    func  calculate(loanAmount:Double,years:Int,interestRate:Double) -> Double {
        let rate = interestRate / 100
        let interest = loanAmount * rate * Double(years)
        return loanAmount + interest
        
    }
}
