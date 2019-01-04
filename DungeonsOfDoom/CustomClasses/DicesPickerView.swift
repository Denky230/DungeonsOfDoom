//
//  DicesPickerView.swift
//  DungeonsOfDoom
//
//  Created by dmorenoar on 30/12/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class DicesPickerView: UIPickerView {
    
    class DicesPickerViewController: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
        
        let frame: CGRect
        let dices: [Dice]
        let components: Int
        
        init(frame: CGRect, dices: [Dice], components: Int) {
            self.frame = frame
            self.dices = dices
            self.components = components
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return components
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return dices.count
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return frame.height * 0.4
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            // Each row's view
            let componentWidth = frame.width / CGFloat(components)
            let view: UIView = UIView(frame: CGRect(
                    x: frame.maxX + (componentWidth * CGFloat(component)),
                    y: frame.maxY,
                    width: componentWidth,
                    height: frame.height / 2
            ))
            
            // ImageView inside view
            let imageView: UIImageView = UIImageView(frame: CGRect(
                    x: 0, y: 0, width: view.frame.width, height: view.frame.height
            ))
            // Add image to imageView + imageView to view
            imageView.image = dices[row].getSprite()
            view.addSubview(imageView)
            
            return view
        }
    }
    
    let controller: DicesPickerViewController
    
    init(frame: CGRect, dices: [Dice], components: Int) {
        self.controller = DicesPickerViewController(frame: frame, dices: dices, components: components)
        super.init(frame: frame)
        
        self.delegate = controller
        self.dataSource = controller
    }
    required init?(coder aDecoder: NSCoder) {
        self.controller = DicesPickerViewController(frame: CGRect(), dices: [], components: 0)
        super.init(coder: aDecoder)
    }
}
