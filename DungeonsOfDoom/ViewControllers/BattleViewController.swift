//
//  BattleViewController.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 30/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {
    
    // Buttons
    @IBAction func btnBack(_ sender: UIButton) {
        // Send to HeroInfo screen
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: true, completion: nil)
    }
    @IBAction func btnAttack(_ sender: UIButton) {
        // Start fight between Hero and selected enemy
        GameManager.fight(
                unit_01: BattleUnitController(unit: currHero, dices: heroPickerView, UI: heroPanelView),
                unit_02: BattleUnitController(unit: selectedEnemy, dices: enemyPickerView, UI: enemyPanelView)
        )
        // Update battle units stats
        updatePanelViews()
        // Check for battle results
        aftermath()
    }
    
    // Panel Views
    var heroPanelView: BattleUnitPanelView!
    var enemyPanelView: BattleUnitPanelView!
    @IBOutlet weak var heroStoryView: UIView!
    @IBOutlet weak var enemyStoryView: UIView!
    
    // Picker Views
    var heroPickerView: DicesPickerView!
    var enemyPickerView: DicesPickerView!
    @IBOutlet weak var heroStoryPickerView: UIPickerView!
    @IBOutlet weak var enemyStoryPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initPanelViews()
        initPickerViews()
    }
    
    func initPanelViews() {
        heroPanelView = BattleUnitPanelView(frame: heroStoryView.frame, unit: currHero)
        enemyPanelView = BattleUnitPanelView(frame: enemyStoryView.frame, unit: selectedEnemy)
        view.addSubview(heroPanelView)
        view.addSubview(enemyPanelView)
    }
    func initPickerViews() {
        heroPickerView = DicesPickerView(frame: heroStoryPickerView.frame, dices: [Dice](repeating: Dice(), count: 10), components: 3)
        enemyPickerView = DicesPickerView(frame: enemyStoryPickerView.frame, dices: [Dice](repeating: Dice(), count: 10), components: 2)
        view.addSubview(heroPickerView)
        view.addSubview(enemyPickerView)
    }
    
    func updatePanelViews() {        
        heroPanelView.setUpViews()
        enemyPanelView.setUpViews()
    }
    
    func aftermath() {
        // Check for battle results
        if currHero.getLifes() == 0 {
            defeat()
        } else if selectedEnemy.getLifes() == 0 {
            victory()
        }
    }
    
    func victory() {
        // Loot enemy
        currHero.setMoney(money: currHero.getMoney() + selectedEnemy.getMoneyDrop())
        
        // Remove enemy from MonsterTable
        if let index = GameData.monsterTable.firstIndex(where: { $0 == selectedEnemy }) {
            GameData.monsterTable.remove(at: index)
        }
        
        // Check for Game Over
        if GameData.monsterTable.isEmpty {
            // Send to HeroInfo screen
            let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
            present(heroInfoVC, animated: true, completion: nil)
            
        } else {
            // Send to MonsterSelection screen
            let monsterSelectionVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MonsterSelectionVC") as UIViewController
            present(monsterSelectionVC, animated: true, completion: nil)
        }
    }
    
    func defeat() {
        // Send to HeroInfo screen
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: true, completion: nil)
    }
}
