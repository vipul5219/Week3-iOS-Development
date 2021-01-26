//
//  ViewController.swift
//  week3
//
//  Created by Graphic on 2021-01-26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        outTxt.text = "\(cnt)"
        // Do any additional setup after loading the view.
    }
    
    var cnt:Int = 0{
        didSet{
            outTxt.text = "\(cnt)"
        }
    }
    var isStepDouble = false
    
    @IBOutlet weak var outTxt: UILabel!
    
    @IBAction func clickStep(_ sender: UIButton) {
        isStepDouble = true
    }
    @IBAction func clickMinus(_ sender: UIButton) {
        if isStepDouble{
            cnt -= 2
        }
        else{
            cnt -= 1
        }
    }
    
    @IBAction func clickReset(_ sender: UIButton) {
        cnt = 0
        isStepDouble = false
    }
    @IBAction func clickOPlus(_ sender: UIButton) {
        if isStepDouble{
            cnt += 2
        }
        else{
            cnt += 1
        }
    }
}

