//
//  ArmorPiece.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 23/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

enum ArmorPiece: Int {
    
    case head = 0
    case shoulders = 1
    case chest = 2
    case gloves = 3
    case pants = 4
    case boots = 5
    case ring = 6
    case weapon = 7
    
    private static let mapper: [Int : ArmorPiece] = [
        0 : .head,
        1 : .shoulders,
        2 : .chest,
        3 : .gloves,
        4 : .pants,
        5 : .boots,
        6 : .ring,
        7 : .weapon,
    ]
    static func getValue(index: Int) -> ArmorPiece {
        return ArmorPiece.mapper[index]!
    }
}
