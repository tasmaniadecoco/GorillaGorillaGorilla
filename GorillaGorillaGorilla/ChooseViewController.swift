//
//  ChooseViewController.swift
//  GorillaGorillaGorilla
//
//  Created by Yuki Fujita on 2019/08/14.
//  Copyright © 2019 tasmaniadecoco. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController {
    
    @IBOutlet weak var gorillaImage: UIImageView!
    @IBOutlet weak var choise1: UIButton!
    @IBOutlet weak var choise2: UIButton!
    @IBOutlet weak var choise3: UIButton!
    @IBOutlet weak var choise4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageNumber = Int.random(in: 1..<4)
        
        gorillaImage.image = UIImage(named: "Gorilla" + "\(imageNumber)")
        choise1.setTitle("ニシローランドゴリラ", for: .normal)
        choise2.setTitle("ヒガシローランドゴリラ", for: .normal)
        choise3.setTitle("マウンテンゴリラ", for: .normal)
        choise4.setTitle("ゴリラ・ゴリラ・グラウエリ", for: .normal)
    }
}
