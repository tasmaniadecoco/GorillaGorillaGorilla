//
//  Question.swift
//  GorillaGorillaGorilla
//
//  Created by Yuki Fujita on 2019/08/14.
//  Copyright © 2019 tasmaniadecoco. All rights reserved.
//

struct Question {
    let choise1: String
    let choise2: String
    let choise3: String
    let choise4: String
    let imageName: String
    let answerName: String
    
    init(
      choise1: String,
      choise2: String,
      choise3: String,
      choise4: String,
      imageName: String,
      answerName: String
    ) {
        self.choise1 = choise1
        self.choise2 = choise2
        self.choise3 = choise3
        self.choise4 = choise4
        self.imageName = imageName
        self.answerName = answerName
    }
}
