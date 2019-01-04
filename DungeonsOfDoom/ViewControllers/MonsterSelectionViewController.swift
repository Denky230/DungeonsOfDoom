//
//  BattleViewController.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 28/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class MonsterSelectionViewController: UIViewController {
    
    // Picker View
    var battlePickerView: DescriptivePickerView!
    @IBOutlet weak var storyPickerView: UIPickerView!
    
    // Buttons
    @IBAction func btnBack(_ sender: UIButton) {
        // Send to HeroInfo screen
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: true, completion: nil)
    }
    @IBAction func btnFight(_ sender: UIButton) {
        // Select enemy to battle
        selectedEnemy = GameData.monsterTable[battlePickerView.selectedRow(inComponent: 0)]
        
        // Send to Battle screen
        let battleVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BattleVC") as UIViewController
        present(battleVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initPickerView()
    }
    
    func initPickerView() {
        battlePickerView = DescriptivePickerView(frame: storyPickerView.frame, items: GameData.monsterTable)
        view.addSubview(battlePickerView)
    }
}
