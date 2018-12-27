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
    var heroInfoPanel: UIView!
    @IBOutlet weak var storyView: UIView!
    
    // Buttons
    @IBAction func btnShop(_ sender: UIButton) {
        let shopVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopVC") as UIViewController
        present(shopVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initHeroInfoPanel()
    }
    
    func initHeroInfoPanel() {
        heroInfoPanel = HeroPanelView(frame: storyView.frame, hero: currHero)
        heroInfoPanel.backgroundColor = UIColor.cyan
        self.view.addSubview(heroInfoPanel)
    }
}
