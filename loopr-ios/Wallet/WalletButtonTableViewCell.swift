//
//  WalletButtonTableViewCell.swift
//  loopr-ios
//
//  Created by xiaoruby on 7/14/18.
//  Copyright © 2018 Loopring. All rights reserved.
//

import UIKit

class WalletButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        self.theme_backgroundColor = GlobalPicker.backgroundColor
        let iconTitlePadding: CGFloat = 14
        
        button1.titleLabel?.setTitleCharFont()
        button1.theme_setTitleColor(GlobalPicker.textColor, forState: .normal)
        button1.theme_setBackgroundImage(GlobalPicker.button, forState: .normal)
        button1.theme_setBackgroundImage(GlobalPicker.buttonHighlight, forState: .highlighted)
        button1.addTarget(self, action: #selector(self.pressedButton1(_:)), for: .touchUpInside)
        button1.set(image: UIImage.init(named: "Scan-dark"), title: LocalizedString("Scan", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .normal)
        button1.set(image: UIImage.init(named: "Scan-dark")?.alpha(0.6), title: LocalizedString("Scan", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .highlighted)
        
        button2.titleLabel?.setTitleCharFont()
        button2.theme_setTitleColor(GlobalPicker.textColor, forState: .normal)
        button2.theme_setBackgroundImage(GlobalPicker.button, forState: .normal)
        button2.theme_setBackgroundImage(GlobalPicker.buttonHighlight, forState: .highlighted)
        button2.addTarget(self, action: #selector(self.pressedButton2(_:)), for: .touchUpInside)
        button2.set(image: UIImage.init(named: "Transaction-receive-dark"), title: LocalizedString("Receive", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .normal)
        button2.set(image: UIImage.init(named: "Transaction-receive-dark")?.alpha(0.6), title: LocalizedString("Receive", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .highlighted)
        
        button3.titleLabel?.setTitleCharFont()
        button3.theme_setTitleColor(GlobalPicker.textColor, forState: .normal)
        button3.theme_setBackgroundImage(GlobalPicker.button, forState: .normal)
        button3.theme_setBackgroundImage(GlobalPicker.buttonHighlight, forState: .highlighted)
        button3.addTarget(self, action: #selector(self.pressedButton3(_:)), for: .touchUpInside)
        button3.set(image: UIImage.init(named: "Transaction-send-dark"), title: LocalizedString("Send", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .normal)
        button3.set(image: UIImage.init(named: "Transaction-send-dark")?.alpha(0.6), title: LocalizedString("Send", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .highlighted)
        
        button4.titleLabel?.setTitleCharFont()
        button4.theme_setTitleColor(GlobalPicker.textColor, forState: .normal)
        button4.theme_setBackgroundImage(GlobalPicker.button, forState: .normal)
        button4.theme_setBackgroundImage(GlobalPicker.buttonHighlight, forState: .highlighted)
        button4.addTarget(self, action: #selector(self.pressedButton4(_:)), for: .touchUpInside)
        button4.set(image: UIImage.init(named: "Transaction-sell-dark"), title: LocalizedString("Trade", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .normal)
        button4.set(image: UIImage.init(named: "Transaction-sell-dark")?.alpha(0.6), title: LocalizedString("Trade", comment: ""), titlePosition: .bottom, additionalSpacing: iconTitlePadding, state: .highlighted)
    }
    
    @objc func pressedButton1(_ button: UIButton) {
        print("pressedItem1Button")
    }
    
    @objc func pressedButton2(_ button: UIButton) {
        print("pressedItem2Button")
    }
    
    @objc func pressedButton3(_ button: UIButton) {
        print("pressedItem3Button")
    }
    
    @objc func pressedButton4(_ button: UIButton) {
        print("pressedItem4Button")
    }

    class func getCellIdentifier() -> String {
        return "WalletBalanceTableViewCell"
    }
    
    class func getHeight() -> CGFloat {
        return 90
    }

}