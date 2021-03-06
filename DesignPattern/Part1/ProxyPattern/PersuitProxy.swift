//
//  PersuitProxy.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

class PersuitProxy: LoveProtocol {
    
    var persuit: Persuit
    
    init(lover: Girl) {
        self.persuit = Persuit(lover: lover)
    }
    
    deinit {
        print("proxy is end")
    }
    
    func giveFlower() {
        persuit.giveFlower()
    }
    
    func giveChocolate() {
        persuit.giveChocolate()
    }
    
}


