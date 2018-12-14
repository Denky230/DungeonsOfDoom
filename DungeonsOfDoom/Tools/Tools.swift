//
//  Tools.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 12/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class Tools: UIViewController {
    
    public func goToViewController(viewControllerIdentifier: String) {
        let vc: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewControllerIdentifier) as UIViewController
        present(vc, animated: false, completion: nil)
    }
}
