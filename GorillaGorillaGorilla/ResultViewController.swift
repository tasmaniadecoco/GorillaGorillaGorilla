//
//  ResultViewController.swift
//  GorillaGorillaGorilla
//
//  Created by Yuki Fujita on 2019/08/17.
//  Copyright © 2019 tasmaniadecoco. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var totalCountLabel: UILabel!
    @IBOutlet weak var getPointLabel: UILabel!
    @IBOutlet weak var nickNameLabel: UILabel!
   
    
    var questionCount:Int = 0
    var getPoint:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalCountLabel.text = "\(questionCount)問中・・・・"
        getPointLabel.text = "\(getPoint)問正解！！！"
        nickNameLabel.text = "あなたはハイパーゴリラです！！！"
    }
}
