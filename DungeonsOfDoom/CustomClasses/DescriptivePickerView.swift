//
//  DescriptivePickerView.swift
//  DungeonsOfDoom
//
//  Created by Oscar Rossello on 21/11/2018.
//  Copyright © 2018 Oscar Rossello. All rights reserved.
//

import UIKit

class DescriptivePickerView: UIPickerView {

    class DescriptivePickerViewController: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
        
        let frame: CGRect
        var items: [Describable]
        
        init(frame: CGRect, items: [Describable]) {
            self.frame = frame
            self.items = items
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return items.count
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return frame.height * 0.4
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            
            // Each row's view
            let view = UIView(frame: CGRect(
                    x: frame.maxX, y: frame.maxY,
                    width: frame.width, height: frame.height / 2
            ))
            
            // ImageView inside view
            let imageSize: Int = Int(view.frame.height * 0.69) // Feel like a 5yo
            let imageView: UIImageView = UIImageView(frame: CGRect(
                    x: 0, y: Int(view.frame.height / 2) - imageSize / 2,
                    width: imageSize, height: imageSize
            ))
            // Add image to imageView + imageView to view
            imageView.image = items[row].sprite
            view.addSubview(imageView)
            
            // Text inside view
            let text: UILabel = UILabel(frame: CGRect(
                    x: imageView.frame.width + 25, y: 0,
                    width: view.frame.width - imageView.frame.width,
                    height: view.frame.height
            ))
            text.numberOfLines = 0
            text.font = UIFont(name: "Verdana", size: 15)
            // Add item description to label + label to view
            text.text = items[row].getDescription()
            view.addSubview(text)
            
            return view
        }
    }
    
    let controller: DescriptivePickerViewController
   
    init(frame: CGRect, items: [Describable]) {
        self.controller = DescriptivePickerViewController(frame: frame, items: items)
        super.init(frame: frame)
        
        self.delegate = controller
        self.dataSource = controller
    }
    required init?(coder aDecoder: NSCoder) {
        self.controller = DescriptivePickerViewController(frame: CGRect(), items: [])
        super.init(coder: aDecoder)
    }
}
