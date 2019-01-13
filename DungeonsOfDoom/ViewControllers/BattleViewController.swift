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
        startFight()
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
    
    // Feedback
    @IBOutlet weak var lblFeedback: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initPanelViews()
        initPickerViews()
    }
    
    func initPanelViews() {
        // Initialize custom views using storyboard frames
        heroPanelView = BattleUnitPanelView(frame: heroStoryView.frame, unit: currHero)
        enemyPanelView = BattleUnitPanelView(frame: enemyStoryView.frame, unit: selectedEnemy)
        view.addSubview(heroPanelView)
        view.addSubview(enemyPanelView)
    }
    func updatePanelViews() {
        heroPanelView.setUpViews()
        enemyPanelView.setUpViews()
    }
    
    func initPickerViews() {
        // Make hero + enemy diceSets
        let heroDices = DiceSet(formatString: "dice%dU", size: 12)
        let enemyDices = DiceSet(formatString: "dice%d", size: 12)
        
        // Get hero + enemy dice number
        let heroDiceNum = currHero.calculateDices()
        let enemyDiceNum = selectedEnemy.calculateDices()
        
        // Initialize picker views using storyboard frames
        heroPickerView =
            DicesPickerView(frame: heroStoryPickerView.frame, dices: heroDices.getDices(), components: heroDiceNum)
        enemyPickerView =
            DicesPickerView(frame: enemyStoryPickerView.frame, dices: enemyDices.getDices(), components: enemyDiceNum)
        view.addSubview(heroPickerView)
        view.addSubview(enemyPickerView)
    }
    
    func startFight() {
        // Make BattleUnitControllers for hero + enemy
        let heroController = BattleUnitController(unit: currHero, dices: heroPickerView, view: heroPanelView)
        let enemyController = BattleUnitController(unit: selectedEnemy, dices: enemyPickerView, view: enemyPanelView)
        
        // Start fight between hero and selected enemy
        fight(unit_01: heroController, unit_02: enemyController)
        
        // Update battle units stats
        updatePanelViews()
        // Check for battle results
        checkAftermath()
    }
    func fight(unit_01: BattleUnitController, unit_02: BattleUnitController) {
        var feedback: String = ""
        var loser: BattleUnit!
        
        // Get units' hit power
        let u01_hitPower: Int = unit_01.getHitPower()
        let u02_hitPower: Int = unit_02.getHitPower()
        
        // Calculate battle results
        if u01_hitPower > u02_hitPower {
            // UNIT 1 WINS
            loser = unit_02.getUnit()
            feedback = "1 wins"
        } else if u02_hitPower > u01_hitPower {	
            // UNIT 2 WINS
            loser = unit_01.getUnit()
            feedback = "2 wins"
        } else {
            // TIE
            feedback = "Empatasión"
        }
        
        // Post fight
        lblFeedback.text = feedback
        if let l = loser {
            l.takeDamage()
        }
    }
    func checkAftermath() {
        // Check for battle results
        if currHero.getLifes() == 0 {
            defeat()
        } else if selectedEnemy.getLifes() == 0 {
            victory()
        }
    }
    
    func victory() {
        // Reset hero
        currHero.reset()
        // Loot enemy
        currHero.setMoney(money: currHero.getMoney() + selectedEnemy.getMoneyDrop())
        
        // Remove enemy from MonsterTable
        if let index = GameData.monsterTable.firstIndex(where: { $0 == selectedEnemy }) {
            GameData.monsterTable.remove(at: index)
        }
        // Check if there's any monster left
        checkForGameOver()
        
        // Send to MonsterSelection screen
        let monsterSelectionVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MonsterSelectionVC") as UIViewController
        present(monsterSelectionVC, animated: true, completion: nil)
    }
    func defeat() {
        // Reset units
        currHero.reset()
        selectedEnemy.reset()
        
        // Send to HeroInfo screen
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: true, completion: nil)
    }
    
    func checkForGameOver() {
        // Check if there's any monster left
        if GameData.monsterTable.isEmpty {
            // Send to HeroInfo screen
            let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
            present(heroInfoVC, animated: true, completion: nil)
        }
    }
}
