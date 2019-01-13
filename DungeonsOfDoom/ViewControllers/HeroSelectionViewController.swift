//
//  ViewController.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 20/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroSelectionViewController: UIViewController {

    // Game hero classes
    let heroClasses: [Hero] = [
        Warrior(name: "Warrior"),
        Hunter(name: "Hunter"),
        Mage(name: "Mage")
    ]
    
    // Hero class panel view
    let heroClassPanelYMargin: Int = 20
    @IBOutlet weak var storyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initHeroClassPanelViews()
    }
    
    func initHeroClassPanelViews() {
        // Create HeroPanelView + button for every hero class
        for heroClassIndex in 0 ..< heroClasses.count {
            
            // Set up view frame with Y margin
            let yOffset = (storyView.frame.height + CGFloat(heroClassPanelYMargin)) * CGFloat(heroClassIndex)
            let frame: CGRect = CGRect(
                    x: storyView.frame.minX,
                    y: storyView.frame.minY + yOffset,
                    width: storyView.frame.width, height: storyView.frame.height
            )
            
            // Create panel view
            let heroClassPanel: HeroPanelView = HeroPanelView(frame: frame, hero: heroClasses[heroClassIndex])
            view.addSubview(heroClassPanel)
            
            // Create button for panel view
            let heroClassButton: UIButton = UIButton(frame: frame)
            heroClassButton.addTarget(self, action: #selector(selectHeroClass), for: UIControl.Event.touchUpInside)
            heroClassButton.tag = heroClassIndex
            view.addSubview(heroClassButton)
        }
    }
    
    @objc func selectHeroClass(sender: UIButton) {
        // Set selected hero class as current hero class
        currHero = heroClasses[sender.tag]
        
        // Send to HeroInfo screen
        let heroInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeroInfoVC") as UIViewController
        present(heroInfoVC, animated: true, completion: nil)
    }
}
