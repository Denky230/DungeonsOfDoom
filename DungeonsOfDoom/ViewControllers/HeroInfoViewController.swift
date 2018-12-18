//
//  HeroInfoViewController.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 27/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroInfoViewController: UIViewController {

    // Hero panel
    var heroInfoPanel: HeroPanelView!
    @IBOutlet weak var storyView: UIView!
    
    // Buttons
    @IBAction func btnShop(_ sender: UIButton) {
        let shopVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopVC") as UIViewController
        present(shopVC, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        currHero = Hunter(name: "RIP Mr.G")
        
        initHeroInfoPanel()
    }
    
    func initHeroInfoPanel() {
        heroInfoPanel = HeroPanelView(frame: storyView.frame, hero: currHero!)
        view.addSubview(heroInfoPanel)
    }
}
