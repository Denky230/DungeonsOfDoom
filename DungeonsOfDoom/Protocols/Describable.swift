//
//  Describable.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 04/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

protocol Describable {
    var sprite: UIImage { set get }
    func getDescription()
}
