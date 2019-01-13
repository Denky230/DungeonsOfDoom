//
//  HeartsView.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 13/01/2019.
//  Copyright © 2019 Oscar Rossello. All rights reserved.
//

import UIKit

class HeartsView: UIView {
    
    let heartFull: UIImage = UIImage(named: "heartFull")!
    let heartEmpty: UIImage = UIImage(named: "heartEmpty")!
    
    let maxHearts: Int
    let fullHearts: Int
    
    init(maxHearts: Int, fullHearts: Int, frame: CGRect) {
        self.maxHearts = maxHearts
        self.fullHearts = fullHearts
        
        super.init(frame: frame)
        setUpViews()
    }
    
    convenience init(hearts: Int, frame: CGRect) {
        self.init(maxHearts: hearts, fullHearts: hearts, frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.maxHearts = 0
        self.fullHearts = 0
        
        super.init(coder: aDecoder)
        setUpViews()
    }
    
    func makeHeartView(frame: CGRect, sprite: UIImage) -> UIImageView {
        let view: UIImageView = UIImageView(frame: frame)
        view.image = sprite
        
        return view
    }
    
    func setUpViews() {
        // Make sure all the hearts fit in the view
        let heartWidthMax: CGFloat = self.frame.width / CGFloat(maxHearts)
        let heartSize: CGFloat = min(self.frame.height, heartWidthMax)
        
        for i in 0 ..< maxHearts {
            // Make heart frame
            let frame: CGRect = CGRect(
                x: heartSize * CGFloat(i),
                y: 0,
                width: heartSize,
                height: heartSize
            )

            // Check if full heart or empty heart
            let sprite: UIImage!
            if i <= fullHearts - 1 {
                sprite = heartFull
            } else {
                sprite = heartEmpty
            }
            
            let heartView = makeHeartView(frame: frame, sprite: sprite)
            self.addSubview(heartView)
        }
    }
}
