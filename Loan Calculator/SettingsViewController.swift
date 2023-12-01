//
//  SettingsViewController.swift
//  Loan Calculator
//
//  Created by VanMac on 29.11.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)
        
        leftBurButton()
        
    }
    
    func leftBurButton() {
        let buttonLeft = UIButton()
        buttonLeft.setTitle("SETTINGS", for: .normal)
        buttonLeft.titleLabel?.font = .boldSystemFont(ofSize: 18)
        buttonLeft.addTarget(self, action: #selector(pushLabelSetting), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: buttonLeft)

    }
    @objc func pushLabelSetting() {
        navigationController?.popViewController(animated: false)
    }

}
