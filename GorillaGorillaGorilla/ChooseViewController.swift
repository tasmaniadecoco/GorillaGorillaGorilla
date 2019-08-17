//
//  ChooseViewController.swift
//  GorillaGorillaGorilla
//
//  Created by Yuki Fujita on 2019/08/14.
//  Copyright © 2019 tasmaniadecoco. All rights reserved.
//

import UIKit

let choises: [Question] = [
    Question(choise1: "ニシローランドゴリラ", choise2: "ヒガシローランドゴリラ", choise3: "マウンテンゴリラ", choise4: "ゴリラ・ゴリラ・グラウエリ", imageName: "Gorilla1", answerName: "マウンテンゴリラ"),
    Question(choise1: "ゴリラ・ゴリラ・ゴリラ", choise2: "ゴリラ・ゴリラ・ベリンゲイ", choise3: "ゴリラ・ゴリラ・ゴリラ", choise4: "ゴリラ・ゴリラ・グラウエリ", imageName: "Gorilla2", answerName: "ゴリラ・ゴリラ・ゴリラ"),
    Question(choise1: "チンパンジー", choise2: "リバーサイドゴリラ", choise3: "マウンテンゴリラ", choise4: "ゴリラ・ゴリラ・ベリンゲイ", imageName: "Gorilla3", answerName: "リバーサイドゴリラ")
]

let questionCount = 3
var currentNumber = 1
var getPoint = 0

class ChooseViewController: UIViewController {
    
    @IBOutlet weak var gorillaImage: UIImageView!
    @IBOutlet weak var choise1: UIButton!
    @IBOutlet weak var choise2: UIButton!
    @IBOutlet weak var choise3: UIButton!
    @IBOutlet weak var choise4: UIButton!
    
    let choise = choises[Int.random(in: 0..<questionCount)]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gorillaImage.image = UIImage(named: choise.imageName)
        
        // ボタンを押した時に実行するメソッドを指定
        choise1.addTarget(self, action: #selector(self.buttonEvent), for: .touchUpInside)
        choise2.addTarget(self, action: #selector(self.buttonEvent), for: .touchUpInside)
        choise3.addTarget(self, action: #selector(self.buttonEvent), for: .touchUpInside)
        choise4.addTarget(self, action: #selector(self.buttonEvent), for: .touchUpInside)

        choise1.setTitle(choise.choise1, for: .normal)
        choise2.setTitle(choise.choise2, for: .normal)
        choise3.setTitle(choise.choise3, for: .normal)
        choise4.setTitle(choise.choise4, for: .normal)
    }
        
    override func viewDidAppear(_ animated: Bool) {
        if currentNumber > questionCount {
            self.performSegue(withIdentifier: "toResultViewController", sender: nil)
        }
    }
    
    // ボタンが押された時に呼ばれるメソッド
    @objc func buttonEvent(_ sender: UIButton) {
        if sender.titleLabel?.text == choise.answerName {
            getPoint += 1
        }
        
        currentNumber += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultViewController" {
            
            let resultVC:ResultViewController = segue.destination as! ResultViewController
            resultVC.getPoint = getPoint
            resultVC.questionCount = questionCount
            
            getPoint = 0
            currentNumber = 0
        }

    }
}
