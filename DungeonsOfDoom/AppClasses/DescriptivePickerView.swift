//
//  DescriptivePickerView.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class DescriptivePickerView: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var items: [Item] = [Item]()
    
    // init()
    public func initialize(items: [Item]) { self.items = items }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // Each row's view
        let view: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        // ImageView inside view
        let imageView: UIImageView = UIImageView(frame: CGRect(x: -50, y: 0, width: 50, height: 50))
        // Add image to imageView + imageView to view
        imageView.image = items[row].getSprite()
        view.addSubview(imageView)
        
        // Text inside view
        let text: UILabel = UILabel(frame: CGRect(x: 50, y: 0, width: 50, height: 50))
        text.text = String(describing: type(of: items[row].getArmorPiece()))
        text.textColor = UIColor.black
        text.font = UIFont(name: "Verdana", size: 30)
        // Add text to view
        view.addSubview(text)
        
        print("hi")
        
        return view
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}
