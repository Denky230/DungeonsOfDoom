//
//  ShopViewController.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 27/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    
    @IBAction func btnBack(_ sender: UIButton) {
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: false, completion: nil)
    }
    @IBAction func btnPurchase(_ sender: UIButton) {
        let itemToBuy: ShopItem = Shop.getShopItem(index: shopPickerView.selectedRow(inComponent: 0))
        Shop.buyItem(item: itemToBuy)
    }
    
    // PickerView
    var shopPickerView: UIPickerView!
    @IBOutlet weak var storyPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initPickerView()
    }
    
    func initPickerView() {
        let frame: CGRect = CGRect(
            x: 0,
            y: 0,
            width: 10, height: 10
        )
        shopPickerView = DescriptivePickerView(items: Shop.getShopItems(), frame: storyPickerView.frame)
        
        view.addSubview(shopPickerView)
    }
}
