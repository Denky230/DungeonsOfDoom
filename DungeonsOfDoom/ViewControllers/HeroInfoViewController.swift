//
//  HeroInfoViewController.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 27/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroInfoViewController: UIViewController {

    @IBAction func btnShop(_ sender: UIButton) {
        let shopVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopVC") as UIViewController
        present(shopVC, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        currHero = Hunter(name: "RIP Mr.G")
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
