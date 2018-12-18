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
    var shopPickerView: DescriptivePickerView!
    @IBOutlet weak var storyPickerView: UIPickerView!
    
    // Buttons
    @IBAction func btnBack(_ sender: UIButton) {
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: false, completion: nil)
    }
    @IBAction func btnPurchase(_ sender: UIButton) {
        let itemToBuy: ShopItem = Shop.getShopItem(index: shopPickerView.selectedRow(inComponent: 0))
        Shop.buyItem(item: itemToBuy)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initPickerView()
    }
    
    func initPickerView() {
        // Initialize shopPickerView with storyboard pickerView's frame + Shop items
        shopPickerView = DescriptivePickerView(frame: storyPickerView.frame, items: Shop.getShopItems())
        view.addSubview(shopPickerView)
    }
}
