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
    let shopPickerView: DescriptivePickerView = DescriptivePickerView()
    @IBOutlet weak var pickerView: UIPickerView!
    
    let shopStartingItems: [Item] = [
        Item(
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 10,
                .defense : 2
            ]),
            armorPiece: .head,
            armorType: .plate
        ),
        Item(
            sprite: UIImage(named: "dice20")!,
            statsTable: StatsTable(stats: [
                .attack : 5,
                .defense : 5
            ]),
            armorPiece: .chest,
            armorType: .plate
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initPickerView()
    }
    
    func initPickerView() {
        pickerView.delegate = shopPickerView
        shopPickerView.initialize(items: shopStartingItems)
        print(shopPickerView.numberOfRows(inComponent: 0))
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

extension UIPickerView {
    
}
