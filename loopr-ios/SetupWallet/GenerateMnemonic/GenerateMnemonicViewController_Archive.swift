//
//  GenerateMnemonicViewController.swift
//  loopr-ios
//
//  Created by xiaoruby on 2/17/18.
//  Copyright © 2018 Loopring. All rights reserved.
//

import UIKit

class GenerateMnemonicViewController_Archive: UIViewController {

    var congratulationIconView = UIImageView()
    var congratulationsLabel: UILabel = UILabel()
    var infoTextView: UITextView = UITextView()
    @IBOutlet weak var backupNowButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setBackButton()

        backupNowButton.setTitle(LocalizedString("Backup Now", comment: ""), for: .normal)
        backupNowButton.setupSecondary()

        // Setup UI in the scroll view
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        // let screenHeight = screensize.height
        
        let originY: CGFloat = 30
        let padding: CGFloat = 15
        
        congratulationIconView.frame = CGRect(x: 15, y: originY+7, width: 22, height: 22)
        congratulationIconView.image = UIImage(named: "Checked")
        view.addSubview(congratulationIconView)

        congratulationsLabel.frame = CGRect(x: 45, y: originY, width: screenWidth - padding * 2, height: 36)
        congratulationsLabel.font = UIFont.init(name: FontConfigManager.shared.getMedium(), size: 27)
        congratulationsLabel.text = LocalizedString("Congratulations!", comment: "")
        view.addSubview(congratulationsLabel)

        infoTextView.frame = CGRect(x: padding-3, y: 72, width: screenWidth - (padding-3) * 2, height: 155)
        infoTextView.isEditable = false
        infoTextView.text = LocalizedString("Your wallet has been generated. Please take a moment to backup your wallet by writing mnemonic words down. Mnemonic words are required to resotre your wallet. Please do not share your mnemonic words with anyone, nor save them on cloud storage.", comment: "")
        infoTextView.textColor = UIColor.black.withAlphaComponent(0.6)
        infoTextView.font = FontConfigManager.shared.getDigitalFont()
        view.addSubview(infoTextView)

        view.theme_backgroundColor = GlobalPicker.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedBackupNowButton(_ sender: Any) {
        print("pressedBackupNowButton")
        let viewController = BackupMnemonicViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}
