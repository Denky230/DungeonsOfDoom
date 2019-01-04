//
//  HeroPanel.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 28/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class HeroPanelView: UIView {
    
    private var hero: Hero!
    
    init(frame: CGRect, hero: Hero) {
        super.init(frame: frame)
        self.hero = hero
        
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpViews()
    }
    
    var sprite: UIImageView {
        let spriteView: UIImageView = UIImageView(frame: CGRect(
                x: 0, y: 0,
                width: frame.width * 0.4,
                height: frame.height
        ))
        spriteView.backgroundColor = UIColor.gray
        spriteView.image = hero.sprite
        
        return spriteView
    }
    
    var heroInfo: UIView {
        let heroInfoView: UIView = UIView(frame: CGRect(
                x: sprite.frame.width, y: 0,
                width: frame.width - sprite.frame.width,
                height: frame.height
        ))
        heroInfoView.backgroundColor = UIColor.orange

        // HERO NAME + HEARTS
        let heroNameView: UIView = UIView(frame: CGRect(
                x: 0, y: 0,
                width: heroInfoView.frame.width,
                height: heroInfoView.frame.height * 0.5
        ))
        heroInfoView.addSubview(heroNameView)
        heroNameView.backgroundColor = UIColor.yellow

        let heroName: UILabel = {
            let label: UILabel = UILabel(frame: CGRect(
                    x: 0, y: 0,
                    width: heroNameView.frame.width,
                    height: heroNameView.frame.height / 2
            ))
            label.backgroundColor = UIColor.green
            label.text = hero.getName()

            return label
        }()
        heroNameView.addSubview(heroName)

        // HERO STATS
        let heroStatsView: UIView = UIView(frame: CGRect(
                x: 0, y: heroNameView.frame.height,
                width: heroInfoView.frame.width,
                height: heroInfoView.frame.height - heroNameView.frame.height
        ))
        heroInfoView.addSubview(heroStatsView)
        
        let heroStats: UILabel = {
            let label: UILabel = UILabel(frame: CGRect(
                    x: 0, y: 0,
                    width: heroStatsView.frame.width,
                    height: heroStatsView.frame.height
            ))
            label.numberOfLines = 0
            label.font = label.font.withSize(15)
            label.text = hero.getDescription()
            
            return label
        }()
        heroStatsView.addSubview(heroStats)

        return heroInfoView
    }
    
    func setUpViews() {
        self.addSubview(sprite)
        self.addSubview(heroInfo)
    }
}
