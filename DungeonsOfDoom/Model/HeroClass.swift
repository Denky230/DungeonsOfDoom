//
//  HeroClass.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import Foundation

class HeroClass {
    
    private let name: String
    private let initLifes: Int
    private let initEstuf: Estuf
    
    init(name: String, initLifes: Int, initEstuf: Estuf) {
        self.name = name
        self.initLifes = initLifes
        self.initEstuf = initEstuf
    }
    
    public func getName() -> String { return self.name }
    public func getInitLifes() -> Int { return self.initLifes }
    public func getInitEstuf() -> Estuf { return self.initEstuf }
}
