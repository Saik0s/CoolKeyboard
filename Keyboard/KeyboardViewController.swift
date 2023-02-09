//
//  KeyboardViewController.swift
//  Keyboard
//
//  Created by Igor Tarasenko on 10/30/14.
//  Copyright (c) 2014 Igor Tarasenko. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    var currentFont:Int = 0
    var currentColor:UInt32 = 0
    var isNumbers:Bool = false
    var isCapital:Bool = false
    
    var currentRow: Int!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        installButtons()
    }
    
    func installButtons() {
        var buttonTitles1:[String]
        var buttonTitles2:[String]
        var buttonTitles3:[String]
        var buttonTitles4:[String]
        if (isNumbers) {
            buttonTitles1 = NumberFont[0]//["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
            buttonTitles2 = NumberFont[1]//["A", "S", "D", "F", "G", "H", "J", "K", "L"]
            buttonTitles3 = NumberFont[2]//["CP", "Z", "X", "C", "V", "B", "N", "M", "BP"]
            buttonTitles3.insert("BP", atIndex: 7)
            buttonTitles4 = ["ABC", "CHG", "SPACE", "RETURN"]
        } else {
            var selectedFont: [[String]]
            if (isCapital && Fonts[currentFont].count > 1) {
                selectedFont = Fonts[currentFont][1]
            } else {
                selectedFont = Fonts[currentFont][0]
            }
            buttonTitles1 = selectedFont[0]//["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
            buttonTitles2 = selectedFont[1]//["A", "S", "D", "F", "G", "H", "J", "K", "L"]
            buttonTitles3 = selectedFont[2]//["CP", "Z", "X", "C", "V", "B", "N", "M", "BP"]
            if Fonts[currentFont].count > 1 {
                buttonTitles3.insert("CP", atIndex: 0)
                buttonTitles3.insert("BP", atIndex: 8)
            } else {
                buttonTitles3.insert("BP", atIndex: 7)
            }
            
            buttonTitles4 = ["123", "CHG", "SPACE", "RETURN"]
        }
        
        currentRow = 0
        var row1 = createRowOfButtons(buttonTitles1)
        var row2 = createRowOfButtons(buttonTitles2)
        var row3 = createRowOfButtons(buttonTitles3)
        var row4 = createRowOfButtons(buttonTitles4)
        
        self.view.addSubview(row1)
        self.view.addSubview(row2)
        self.view.addSubview(row3)
        self.view.addSubview(row4)
        
        row1.setTranslatesAutoresizingMaskIntoConstraints(false)
        row2.setTranslatesAutoresizingMaskIntoConstraints(false)
        row3.setTranslatesAutoresizingMaskIntoConstraints(false)
        row4.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        addConstraintsToInputView(self.view, rowViews: [row1, row2, row3, row4])
    }
    
    func createRowOfButtons(buttonTitles: [NSString]) -> UIView {
        
        var buttons = [UIButton]()
        var keyboardRowView = UIView(frame: CGRectMake(0, 0, 320, 50))
        
        for buttonTitle in buttonTitles{
            
            let button = createButtonWithTitle(buttonTitle as String)
            buttons.append(button)
            keyboardRowView.addSubview(button)
        }
        
        addIndividualButtonConstraints(buttons, mainView: keyboardRowView)
        currentRow = currentRow + 1
        return keyboardRowView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(textInput: UITextInput) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(textInput: UITextInput) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        var proxy = self.textDocumentProxy as! UITextDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
    }
    
    
    
    func createButtonWithTitle(title: String) -> UIButton {
        
        let button = UIButton.buttonWithType(.Custom) as! UIButton
        button.frame = CGRectMake(0, 0, 20, 20)
        button.sizeToFit()
        button.titleLabel?.font = UIFont.systemFontOfSize(15)
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        button.randomStyle(currentColor)
        //button.setBackgroundImage(UIImage(named: "button1"), forState: .Normal)
        //button.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
        //button.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        button.addTarget(self, action: "didTapButton:", forControlEvents: .TouchUpInside)
        
        switch title {
        case "SPACE":
            //button.setTitle("\(currentFont)", forState: .Normal)
            button.tag = 1
            break
        case "CHG":
            button.tag = 4
            button.addAwesomeIcon(FAIconGlobe, beforeTitle: false)
            /*button.setTitle("", forState: .Normal)
            button.imageView?.contentMode = .ScaleAspectFit
            button.tag = 4
            button.setImage(UIImage(named: "globe.png"), forState: .Normal)
            if (UIDevice.currentDevice().userInterfaceIdiom == .Phone) {
                button.contentEdgeInsets = UIEdgeInsetsMake(15, 0, 15, 0);
            } else {
                button.contentEdgeInsets = UIEdgeInsetsMake(20, 0, 20, 0);
            }*/
            break
        case "123":
            button.setTitle(title, forState: .Normal)
            button.tag = 5
            break
        case "ABC":
            button.setTitle(title, forState: .Normal)
            button.tag = 5
            break
        case "CP":
            button.addAwesomeIcon(FAIconArrowUp, beforeTitle: true)
            button.tag = 6
            break
        case "BP":
            button.addAwesomeIcon(FAIconChevronLeft, beforeTitle: true)
            button.tag = 3
            break
        case "RETURN":
            button.setTitle("⏎", forState: .Normal)
            //button.addAwesomeIcon(FAIcon, beforeTitle: true)
            button.tag = 2
            break
        default:
            button.setTitle(title, forState: .Normal)
            break
        }
        return button
    }
    
    func didTapButton(sender: AnyObject?) {
        
        let button = sender as! UIButton
        var proxy = textDocumentProxy as! UITextDocumentProxy
        
        switch (button.tag) {
        case 1:
            proxy.insertText(" ")
            break
        case 2:
            proxy.insertText("\n")
            break
        case 3:
            proxy.deleteBackward()
            break
        case 4:
            currentFont++
            currentColor = arc4random_uniform(8)
            if (currentFont >= Fonts.count) {
                self.advanceToNextInputMode()
            } else {
                for v in self.view.subviews {
                    v.removeFromSuperview()
                }
                isNumbers = false
                isCapital = false
                installButtons()
            }
            break
        case 5:
            isNumbers = !isNumbers
            for v in self.view.subviews {
                v.removeFromSuperview()
            }
            isCapital = false
            installButtons()
            break
        case 6:
            isCapital = !isCapital
            for v in self.view.subviews {
                v.removeFromSuperview()
            }
            installButtons()
            break
        default:
            if let title = button.titleForState(.Normal) {
                proxy.insertText(title)
            }
            break
        }
    }
    
    func addIndividualButtonConstraints(buttons: [UIButton], mainView: UIView){
        
        for (index, button) in enumerate(buttons) {
            
            var topConstraint = NSLayoutConstraint(item: button, attribute: .Top, relatedBy: .Equal, toItem: mainView, attribute: .Top, multiplier: 1.0, constant: 1)
            
            var bottomConstraint = NSLayoutConstraint(item: button, attribute: .Bottom, relatedBy: .Equal, toItem: mainView, attribute: .Bottom, multiplier: 1.0, constant: -1)
            
            var rightConstraint : NSLayoutConstraint!
            
            if index == buttons.count - 1 {
                
                rightConstraint = NSLayoutConstraint(item: button, attribute: .Right, relatedBy: .Equal, toItem: mainView, attribute: .Right, multiplier: 1.0, constant: -1)
                
            }else{
                
                let nextButton = buttons[index+1]
                rightConstraint = NSLayoutConstraint(item: button, attribute: .Right, relatedBy: .Equal, toItem: nextButton, attribute: .Left, multiplier: 1.0, constant: -1)
            }
            
            
            var leftConstraint : NSLayoutConstraint!
            
            if index == 0 {
                
                leftConstraint = NSLayoutConstraint(item: button, attribute: .Left, relatedBy: .Equal, toItem: mainView, attribute: .Left, multiplier: 1.0, constant: 1)
                
                if currentRow == 3 {
                    var widthConstraint = NSLayoutConstraint(item: button, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: UIScreen.mainScreen().bounds.width/8)
                    
                    widthConstraint.priority = 1000
                    mainView.addConstraint(widthConstraint)
                }
                
            }else{
                
                let prevtButton = buttons[index-1]
                leftConstraint = NSLayoutConstraint(item: button, attribute: .Left, relatedBy: .Equal, toItem: prevtButton, attribute: .Right, multiplier: 1.0, constant: 1)
                
                let firstButton = buttons[0]
                if currentRow == 3 && index == 1 {
                    var widthConstraint = NSLayoutConstraint(item: button, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: UIScreen.mainScreen().bounds.width/8)
                    
                    widthConstraint.priority = 1000
                    mainView.addConstraint(widthConstraint)
                } else if currentRow == 3 && index == buttons.count - 1 {
                    var widthConstraint = NSLayoutConstraint(item: button, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: UIScreen.mainScreen().bounds.width/4)
                    
                    widthConstraint.priority = 1000
                    mainView.addConstraint(widthConstraint)
                } else {
                    var widthConstraint = NSLayoutConstraint(item: firstButton, attribute: .Width, relatedBy: .Equal, toItem: button, attribute: .Width, multiplier: 1.0, constant: 0)
                    
                    widthConstraint.priority = 800
                    mainView.addConstraint(widthConstraint)
                }
            }
            
            mainView.addConstraints([topConstraint, bottomConstraint, rightConstraint, leftConstraint])
        }
    }
    
    
    func addConstraintsToInputView(inputView: UIView, rowViews: [UIView]){
        
        for (index, rowView) in enumerate(rowViews) {
            var rightSideConstraint = NSLayoutConstraint(item: rowView, attribute: .Right, relatedBy: .Equal, toItem: inputView, attribute: .Right, multiplier: 1.0, constant: -1)
            
            var leftConstraint = NSLayoutConstraint(item: rowView, attribute: .Left, relatedBy: .Equal, toItem: inputView, attribute: .Left, multiplier: 1.0, constant: 1)
            
            inputView.addConstraints([leftConstraint, rightSideConstraint])
            
            var topConstraint: NSLayoutConstraint
            
            if index == 0 {
                topConstraint = NSLayoutConstraint(item: rowView, attribute: .Top, relatedBy: .Equal, toItem: inputView, attribute: .Top, multiplier: 1.0, constant: 0)
                
            }else{
                
                let prevRow = rowViews[index-1]
                topConstraint = NSLayoutConstraint(item: rowView, attribute: .Top, relatedBy: .Equal, toItem: prevRow, attribute: .Bottom, multiplier: 1.0, constant: 0)
                
                let firstRow = rowViews[0]
                var heightConstraint = NSLayoutConstraint(item: firstRow, attribute: .Height, relatedBy: .Equal, toItem: rowView, attribute: .Height, multiplier: 1.0, constant: 0)
                
                heightConstraint.priority = 800
                
                inputView.addConstraint(heightConstraint)
            }
            inputView.addConstraint(topConstraint)
            
            var bottomConstraint: NSLayoutConstraint
            
            if index == rowViews.count - 1 {
                bottomConstraint = NSLayoutConstraint(item: rowView, attribute: .Bottom, relatedBy: .Equal, toItem: inputView, attribute: .Bottom, multiplier: 1.0, constant: 0)
                
            }else{
                
                let nextRow = rowViews[index+1]
                bottomConstraint = NSLayoutConstraint(item: rowView, attribute: .Bottom, relatedBy: .Equal, toItem: nextRow, attribute: .Top, multiplier: 1.0, constant: 0)
            }
            
            inputView.addConstraint(bottomConstraint)
        }
        
    }

}
