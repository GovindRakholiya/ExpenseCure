//
//  AddExpenseIncomeViewController.swift
//  Expensecure
//
//  Created by Ishan Vyas on 30/10/19.
//  Copyright © 2019 Coddiction. All rights reserved.
//

import UIKit

class AddExpenseIncomeViewController: UIViewController {

    var incomeOrExpense : selectedOption? = selectedOption.income
    @IBOutlet weak var btnExpense: UIButton!
    @IBOutlet weak var btnIncome: UIButton!
    @IBOutlet weak var vieeButton: UIView!
    @IBOutlet weak var viewBottomInfo: UIView!
    
    //View Above recurring
    
    @IBOutlet weak var viewSelectCategory: UIView!
    @IBOutlet weak var viewIncomeDetail: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    //MARK:-  Setup UI 
    func setupUI() {
        setButtonUI()
        btnIncome.roundCorners(corners: [.topLeft,.bottomLeft], radius: 5.0)
        btnExpense.roundCorners(corners: [.topRight,.bottomRight], radius: 5.0)
        
    }
    
    func setButtonUI()  {
        if (incomeOrExpense == selectedOption.income){
            btnIncome.selectedButton()
            btnExpense.unSelectedButton()
        }else{
            btnIncome.unSelectedButton()
            btnExpense.selectedButton()
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (sender.tag == 0){
            incomeOrExpense = selectedOption.income
            setButtonUI()
        }else{
            incomeOrExpense = selectedOption.expense
            setButtonUI()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
