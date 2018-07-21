//
//  ViewController.swift
//  ShoppingApp
//
//  Created by 劉鴻祥 on 2018/7/21.
//  Copyright © 2018年 劉鴻祥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ixPrice : Int = 35000
    let i8Price : Int = 28500
    let iwatchPrice: Int = 10000
    let iairPodsPrice: Int = 5000
    var totalPrice : Int = 0
    
    var ixQty : Int = 0
    var i8Qty : Int = 0
    var iwQty : Int = 0
    var iaQty : Int = 0
    
    
    @IBOutlet weak var ixQtyLabel: UILabel!
    @IBOutlet weak var i8QtyLabel: UILabel!
    @IBOutlet weak var iwQtyLabel: UILabel!
    @IBOutlet weak var iaQtyLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    func totalAmount ( ) {
        totalPrice = ixPrice * ixQty + i8Price * i8Qty + iwatchPrice * iwQty + iairPodsPrice * iaQty
        totalPriceLabel.text = totalPrice.description
    }
    
    @IBAction func ixQtyStepper(_ sender: UIStepper) {
        ixQty = Int (sender.value)
        ixQtyLabel.text = ixQty.description
        totalAmount()
    }
    
    @IBAction func i8QtyStepper(_ sender: UIStepper) {
        i8Qty = Int (sender.value)
        i8QtyLabel.text = i8Qty.description
        totalAmount()
    }
    
    @IBAction func iwQtyStepper(_ sender: UIStepper) {
        iwQty = Int (sender.value)
        iwQtyLabel.text = iwQty.description
        totalAmount()
    }
    
    @IBAction func iaQtyStepper(_ sender: UIStepper) {
        iaQty = Int (sender.value)
        iaQtyLabel.text = iaQty.description
        totalAmount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

