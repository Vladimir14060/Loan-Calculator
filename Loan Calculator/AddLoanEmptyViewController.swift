//
//  AddLoanEmptyViewController.swift
//  Loan Calculator
//
//  Created by VanMac on 29.11.2023.
//

import UIKit

class AddLoanEmptyViewController: UIViewController {
    
    var textFieldTitle = UITextField()
    var textFieldAmount = UITextField()
    var textFieldRate = UITextField()
    var textFieldTerm = UITextField()
    var textFieldFirstPaymentDate = UITextField()
    var segmentPaymentType = UISegmentedControl()
    var buttonLoad = UIButton()
    var itemArray = [Model]()

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)
        
        rightBurButton()
        leftBurButton()
        createLabelTitle()
        createTextFieldTitle()
        createTextFieldAmount()
        createTextFieldRate()
        createTextFieldTerm()
        createTextFieldFirstPaymentDate()
        createSegmentPaymentType()
        createButtonAddLoan()
        
    }
    
    func rightBurButton() {
        let buttonRight = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let imageButton = UIImage(named: "Setting")
        buttonRight.setBackgroundImage(imageButton, for: .normal)
        buttonRight.addTarget(self, action: #selector(pushSetting), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: buttonRight)
    }
    @objc func pushSetting() {
        let settingsViewController = SettingsViewController()
        navigationController?.pushViewController(settingsViewController, animated: false)
    }
    
    func leftBurButton() {
        let buttonLeft = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let imageButton = UIImage(named: "ArrowLeft")
        buttonLeft.setBackgroundImage(imageButton, for: .normal)
        buttonLeft.addTarget(self, action: #selector(pushBack), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: buttonLeft)
    }
    @objc func pushBack() {
        navigationController?.popViewController(animated: false)
    }
    
    func createLabelTitle() {
        let label = UILabel(frame: .zero)
        label.text = "ADD LOAN"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        navigationItem.titleView = label
    }
    
    func createTextFieldTitle() {
        let title = UILabel()
        title.text = "Title"
        title.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 10, weight: .regular)
        textFieldTitle.textColor = .white
        textFieldTitle.borderStyle = .roundedRect
        textFieldTitle.contentVerticalAlignment = .center
        textFieldTitle.textAlignment = .left
        textFieldTitle.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 47/255.0, alpha: 1.0)
        textFieldTitle.layer.cornerRadius = 6
        textFieldTitle.layer.borderWidth = 1
        textFieldTitle.layer.borderColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0).cgColor
        
        self.view.addSubview(title)
        self.view.addSubview(textFieldTitle)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.widthAnchor.constraint(equalToConstant: 343),
            title.heightAnchor.constraint(equalToConstant: 17),
            title.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 41),
            title.leadingAnchor.constraint(equalTo: textFieldTitle.leadingAnchor)
        ])
        
        textFieldTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //textFieldTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldTitle.widthAnchor.constraint(equalToConstant: 341.98),
            textFieldTitle.heightAnchor.constraint(equalToConstant: 48.16),
            textFieldTitle.topAnchor.constraint(equalTo: title.bottomAnchor),
            textFieldTitle.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16.02),
            textFieldTitle.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -17)
        ])
    }
    
    func createTextFieldAmount() {
        let title = UILabel()
        title.text = "Amount"
        title.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 10, weight: .regular)
        textFieldAmount.textColor = .white
        textFieldAmount.borderStyle = .roundedRect
        textFieldAmount.contentVerticalAlignment = .center
        textFieldAmount.textAlignment = .left
        textFieldAmount.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 47/255.0, alpha: 1.0)
        textFieldAmount.layer.cornerRadius = textFieldTitle.layer.cornerRadius
        textFieldAmount.layer.borderWidth = textFieldTitle.layer.borderWidth
        textFieldAmount.layer.borderColor = textFieldTitle.layer.borderColor
        
        self.view.addSubview(title)
        self.view.addSubview(textFieldAmount)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.widthAnchor.constraint(equalToConstant: 162),
            title.heightAnchor.constraint(equalToConstant: 17),
            title.topAnchor.constraint(equalTo: textFieldTitle.bottomAnchor, constant: 37),
            title.leadingAnchor.constraint(equalTo: textFieldTitle.leadingAnchor)
        ])
        
        textFieldAmount.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //textFieldAmount.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //textFieldAmount.widthAnchor.constraint(equalToConstant: 161.52),
            textFieldAmount.widthAnchor.constraint(equalTo: textFieldTitle.widthAnchor, multiplier: 2/4, constant: -8.5),
            textFieldAmount.heightAnchor.constraint(equalToConstant: 48.16),
            textFieldAmount.topAnchor.constraint(equalTo: title.bottomAnchor),
            textFieldAmount.leadingAnchor.constraint(equalTo: title.leadingAnchor)
        ])
    }
    
    func createTextFieldRate() {
        let title = UILabel()
        title.text = "Rate"
        title.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 10, weight: .regular)
        textFieldRate.textColor = .white
        textFieldRate.borderStyle = .roundedRect
        textFieldRate.contentVerticalAlignment = .center
        textFieldRate.textAlignment = .left
        textFieldRate.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 47/255.0, alpha: 1.0)
        textFieldRate.layer.cornerRadius = textFieldTitle.layer.cornerRadius
        textFieldRate.layer.borderWidth = textFieldTitle.layer.borderWidth
        textFieldRate.layer.borderColor = textFieldTitle.layer.borderColor
        
        self.view.addSubview(title)
        self.view.addSubview(textFieldRate)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.widthAnchor.constraint(equalToConstant: 162),
            title.heightAnchor.constraint(equalToConstant: 17),
            title.topAnchor.constraint(equalTo: textFieldTitle.bottomAnchor, constant: 37),
            title.leadingAnchor.constraint(equalTo: textFieldAmount.trailingAnchor, constant: 17)
        ])
        
        textFieldRate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //textFieldRate.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldRate.widthAnchor.constraint(equalToConstant: 161.52),
            textFieldRate.heightAnchor.constraint(equalToConstant: 48.16),
            textFieldRate.topAnchor.constraint(equalTo: title.bottomAnchor),
            textFieldRate.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            textFieldRate.trailingAnchor.constraint(equalTo: textFieldTitle.trailingAnchor)
        ])
    }
    
    func createTextFieldTerm() {
        let title = UILabel()
        title.text = "Term"
        title.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 10, weight: .regular)
        textFieldTerm.textColor = .white
        textFieldTerm.borderStyle = .roundedRect
        textFieldTerm.contentVerticalAlignment = .center
        textFieldTerm.textAlignment = .left
        textFieldTerm.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 47/255.0, alpha: 1.0)
        textFieldTerm.layer.cornerRadius = textFieldTitle.layer.cornerRadius
        textFieldTerm.layer.borderWidth = textFieldTitle.layer.borderWidth
        textFieldTerm.layer.borderColor = textFieldTitle.layer.borderColor
        
        self.view.addSubview(title)
        self.view.addSubview(textFieldTerm)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.widthAnchor.constraint(equalToConstant: 162),
            title.heightAnchor.constraint(equalToConstant: 17),
            title.topAnchor.constraint(equalTo: textFieldAmount.bottomAnchor, constant: 37),
            title.leadingAnchor.constraint(equalTo: textFieldTitle.leadingAnchor)
        ])
        
        textFieldTerm.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textFieldTerm.widthAnchor.constraint(equalTo: textFieldTitle.widthAnchor, multiplier: 2/4, constant: -8.5),
            textFieldTerm.heightAnchor.constraint(equalToConstant: 48.16),
            textFieldTerm.topAnchor.constraint(equalTo: title.bottomAnchor),
            textFieldTerm.leadingAnchor.constraint(equalTo: title.leadingAnchor)
        ])
    }
    
    func createTextFieldFirstPaymentDate() {
        let title = UILabel()
        title.text = "First payment date"
        title.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 10, weight: .regular)
        textFieldFirstPaymentDate.textColor = .white
        textFieldFirstPaymentDate.borderStyle = .roundedRect
        textFieldFirstPaymentDate.contentVerticalAlignment = .center
        textFieldFirstPaymentDate.textAlignment = .left
        textFieldFirstPaymentDate.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 47/255.0, alpha: 1.0)
        textFieldFirstPaymentDate.layer.cornerRadius = textFieldTitle.layer.cornerRadius
        textFieldFirstPaymentDate.layer.borderWidth = textFieldTitle.layer.borderWidth
        textFieldFirstPaymentDate.layer.borderColor = textFieldTitle.layer.borderColor
        
        
        self.view.addSubview(title)
        self.view.addSubview(textFieldFirstPaymentDate)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.widthAnchor.constraint(equalToConstant: 162),
            title.heightAnchor.constraint(equalToConstant: 17),
            title.topAnchor.constraint(equalTo: textFieldAmount.bottomAnchor, constant: 37),
            title.leadingAnchor.constraint(equalTo: textFieldTerm.trailingAnchor, constant: 17)
        ])
        
        textFieldFirstPaymentDate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textFieldFirstPaymentDate.widthAnchor.constraint(equalToConstant: 161.52),
            textFieldFirstPaymentDate.heightAnchor.constraint(equalToConstant: 48.16),
            textFieldFirstPaymentDate.topAnchor.constraint(equalTo: title.bottomAnchor),
            textFieldFirstPaymentDate.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            textFieldFirstPaymentDate.trailingAnchor.constraint(equalTo: textFieldTitle.trailingAnchor)
        ])
    }
    
    func createSegmentPaymentType() {
        let title = UILabel()
        title.text = "Payment type"
        title.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 10, weight: .regular)
        
        let arraySegment = ["ANNUITY", "DIFFERENTIAL"]
        segmentPaymentType = .init(items: arraySegment)
        
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentPaymentType.setTitleTextAttributes(titleTextAttributes, for:.normal)
        let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentPaymentType.setTitleTextAttributes(titleTextAttributes1, for:.selected)
          
        segmentPaymentType.backgroundColor = .black//self.view.backgroundColor
        
        segmentPaymentType.selectedSegmentTintColor = textFieldTitle.backgroundColor
        

        
        self.view.addSubview(title)
        self.view.addSubview(segmentPaymentType)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.widthAnchor.constraint(equalToConstant: 343),
            title.heightAnchor.constraint(equalToConstant: 17),
            title.topAnchor.constraint(equalTo: textFieldTerm.bottomAnchor, constant: 78),
            title.leadingAnchor.constraint(equalTo: textFieldTerm.leadingAnchor)
            
        ])
        
        segmentPaymentType.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segmentPaymentType.heightAnchor.constraint(equalToConstant: 36),
            segmentPaymentType.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 12),
            segmentPaymentType.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            segmentPaymentType.trailingAnchor.constraint(equalTo: textFieldTitle.trailingAnchor)
        ])
    }
    
    func createButtonAddLoan() {
        buttonLoad = UIButton(frame: .zero)
        buttonLoad.backgroundColor = UIColor(red: 36/255.0, green: 198/255.0, blue: 101/255.0, alpha: 1.0)
        buttonLoad.setTitle("ADD LOAN", for: .normal)
        buttonLoad.setTitleColor(.white, for: .normal)
        buttonLoad.titleLabel?.font = .boldSystemFont(ofSize: 13)
        buttonLoad.layer.cornerRadius = 30
        buttonLoad.layer.masksToBounds = true
        self.view.addSubview(buttonLoad)
        
        buttonLoad.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonLoad.widthAnchor.constraint(equalToConstant: 312),
            buttonLoad.heightAnchor.constraint(equalToConstant: 62),
            buttonLoad.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            //buttonLoad.topAnchor.constraint(equalTo: segmentPaymentType.bottomAnchor, constant: 195),
            buttonLoad.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            buttonLoad.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 14.5),
            buttonLoad.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -14.5),
        ])
        
        buttonLoad.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }
    //вот тут я жестко туплю, мне кажется, ято я модель не понял..(просто тупой еще, к сожалению, но я стараюсь)
    @objc func pushButtonAction() {
        let title = textFieldTitle.text!
        let amount = textFieldAmount.text!
        let rate = textFieldRate.text!
        let firstPaymentDate = textFieldFirstPaymentDate.text!
        
        if !title.isEmpty && !amount.isEmpty && !rate.isEmpty && !firstPaymentDate.isEmpty {
            let item = Model(title: title, amount: amount, rate: rate, firstPaymentDate: firstPaymentDate)
            itemArray.append(item)
            navigationController?.popViewController(animated: false)
        }
    }



}
