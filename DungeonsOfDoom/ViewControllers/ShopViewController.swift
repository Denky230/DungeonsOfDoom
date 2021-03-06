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
    
    @IBOutlet weak var currHeroMoney: UILabel!
    
    // Buttons
    @IBAction func btnBack(_ sender: UIButton) {
        // Send to HeroInfo screen
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: true, completion: nil)
    }
    @IBAction func btnPurchase(_ sender: UIButton) {
        // Buy item
        let itemSelected = shopPickerView.selectedRow(inComponent: 0)
        let itemToBuy = Shop.getShopItem(index: itemSelected)
        Shop.buyItem(item: itemToBuy)
        
        // Update hero's money
        currHeroMoney.text = String(currHero.getMoney())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        currHeroMoney.text = String(currHero.getMoney())
        initPickerView()
    }
    
    func initPickerView() {
        // Initialize shopPickerView with storyboard pickerView's frame + Shop items
        shopPickerView = DescriptivePickerView(frame: storyPickerView.frame, items: Shop.getShopItems() as! [Describable])
        view.addSubview(shopPickerView)
    }
}
