//
//  ShopViewController.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 27/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    // PickerView
    var shopPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        shopPickerView = DescriptivePickerView(frame: CGRect(x: 0, y: 0, width: 100, height: 100), items: GameVariables.shopStartingItems)
        
        self.view.addSubview(shopPickerView)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
