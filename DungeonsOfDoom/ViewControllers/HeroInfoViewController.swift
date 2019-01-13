//
//  HeroInfoViewController.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 27/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroInfoViewController: UIViewController {

    // Buttons
    @IBAction func btnShop(_ sender: UIButton) {
        // Send to Shop screen
        let shopVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopVC") as UIViewController
        present(shopVC, animated: true, completion: nil)
    }
    @IBAction func btnBattle(_ sender: UIButton) {
        // Send to MonsterSelection screen
        let monsterSelectionVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MonsterSelectionVC") as UIViewController
        present(monsterSelectionVC, animated: true, completion: nil)
    }
    
    // Hero panel
    var heroInfoPanel: UIView!
    @IBOutlet weak var storyView: UIView!
    
    // Hero equipment
    @IBOutlet var equipmentImgs: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initHeroInfoPanel()
        initEquipmentImgs()
    }
    
    func initHeroInfoPanel() {
        heroInfoPanel = HeroPanelView(frame: storyView.frame, hero: currHero)
        heroInfoPanel.backgroundColor = UIColor.cyan
        view.addSubview(heroInfoPanel)
    }
    
    func initEquipmentImgs() {
        // Sort equipment images by tag
        equipmentImgs = equipmentImgs.sorted(by: { $0.tag < $1.tag })
        
        // TO DO: Assing each item sprite to its corresponding UIImageView
        let heroItemSlots: [ItemSlot] = currHero.getEquipment().getItemSlots()
    }
}
