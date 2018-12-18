//
//  ViewController.swift
//  Experiment_13_(1)
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 QYS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calculateButton.addTarget(self, action: #selector(startCalculate), for: .touchUpInside)
        let text = """
        shuahdiu
        djasfjoidjf
        hfduhfdu
        fjdiosjfoi
        8495809
        475893745
        345273984
        joiusafjg
        8940350
        hjfiuogjsio
        475923
        urtiuwe
        87435897324
        jhreiojtioer
        shgfiuosdfg
        hsfgiuerth
        shuahdiu
        djasfjoidjf
        hfduhfdu
        fjdiosjfoi
        8495809
        475893745
        345273984
        joiusafjg
        8940350
        hjfiuogjsio
        """
        textView.text = text
    }
    @IBAction func startCalculate(_ sender: Any) {
        DispatchQueue.global().async {
            var number = 0
            for num in 1...9999999 {
                number += num
                DispatchQueue.main.async {
                    self.countLabel.text = "\(number)"
                }
            }
        }
    }
}

