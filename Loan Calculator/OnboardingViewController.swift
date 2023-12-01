//
//  OnboardingViewController.swift
//  Loan Calculator
//
//  Created by VanMac on 28.11.2023.
//

import UIKit

class OnboardingViewController: UIViewController {

    var imageViewOne = UIImageView()
    var viewOne = UIView()
    var labelOne = UILabel()
    var labelTwo = UILabel()
    var buttonContinue = UIButton()
    var buttonOneView = UIButton()
    var buttonTwoView = UIButton()
    var menuArray = ["", ""]
    var labelThree = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)

        self.navigationItem.setHidesBackButton(true, animated: true)
        
        createImageViewOne()
        createOneView()
        createLabelOne()
        createLabelTwo()
        createButtonContinue()
        createButtonOneView()
        createButtonTwoView()
        createLabelThree()
    }
    
    func createImageViewOne() {
        imageViewOne = UIImageView(frame: .zero)
        imageViewOne.image = UIImage(named: "onboarding1")
        self.view.addSubview(imageViewOne)
        
        imageViewOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewOne.widthAnchor.constraint(equalToConstant: 268),
            imageViewOne.heightAnchor.constraint(equalToConstant: 268),
            imageViewOne.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageViewOne.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 98),
        ])
    }
    
    func createOneView() {
        viewOne = UIView(frame: .zero)
        viewOne.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 48/255.0, alpha: 1.0)
        viewOne.layer.cornerRadius = 28
        viewOne.layer.masksToBounds = true
        self.view.addSubview(viewOne)
        
        viewOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewOne.widthAnchor.constraint(equalToConstant: 353),
            viewOne.heightAnchor.constraint(equalToConstant: 303),
            viewOne.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            viewOne.topAnchor.constraint(equalTo: imageViewOne.bottomAnchor, constant: 200),
            viewOne.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
        ])
    }
    
    func createLabelOne() {
        //Меняем цвет - LOAN CALCULATOR
        let mainString = "WELCOME TO THE LOAN CALCULATOR APP!"
        let stringToColor = "LOAN CALCULATOR"
        let range = (mainString as NSString).range(of: stringToColor)
        let mutableAttributedString = NSMutableAttributedString.init(string: mainString)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: range)

        labelOne = UILabel(frame: .zero)
        labelOne.textColor = .white
        labelOne.attributedText = mutableAttributedString
        labelOne.lineBreakMode = .byWordWrapping
        labelOne.numberOfLines = 2
        labelOne.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        labelOne.textAlignment = .center
        viewOne.addSubview(labelOne)
        
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelOne.widthAnchor.constraint(equalToConstant: 283),
            labelOne.heightAnchor.constraint(equalToConstant: 40),
            labelOne.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor),
            labelOne.topAnchor.constraint(equalTo: viewOne.topAnchor, constant: 33),
        ])
    }
    
    func createLabelTwo() {
        labelTwo = UILabel(frame: .zero)
        labelTwo.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        labelTwo.text = "We're here to help you quickly and conveniently estimate the cost of your mortgage and understand your monthly obligations."
        labelTwo.lineBreakMode = .byWordWrapping
        labelTwo.numberOfLines = 3
        labelTwo.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        labelTwo.textAlignment = .center
        viewOne.addSubview(labelTwo)
        
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTwo.widthAnchor.constraint(equalToConstant: 306),
            labelTwo.heightAnchor.constraint(equalToConstant: 50),
            labelTwo.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor),
            labelTwo.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 20)
        ])
    }
    
    func createButtonContinue() {
        buttonContinue = UIButton(frame: .zero)
        buttonContinue.backgroundColor = UIColor(red: 36/255.0, green: 198/255.0, blue: 101/255.0, alpha: 1.0)
        buttonContinue.setTitle("CONTINUE", for: .normal)
        buttonContinue.setTitleColor(.white, for: .normal)
        buttonContinue.layer.cornerRadius = 30
        buttonContinue.layer.masksToBounds = true
        viewOne.addSubview(buttonContinue)
        
        buttonContinue.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonContinue.widthAnchor.constraint(equalToConstant: 312),
            buttonContinue.heightAnchor.constraint(equalToConstant: 62),
            buttonContinue.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor),
            buttonContinue.topAnchor.constraint(equalTo: labelTwo.bottomAnchor, constant: 28)
        ])
        
        buttonContinue.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }
    @objc func pushButtonAction() {
        let onboardingViewControllerTwo = OnboardingViewControllerTwo()
        navigationController?.pushViewController(onboardingViewControllerTwo, animated: false)
    }
    
    func createButtonOneView() {
        buttonOneView = UIButton(frame: .zero)
        buttonOneView.backgroundColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        buttonOneView.layer.cornerRadius = 5
        buttonOneView.layer.masksToBounds = true
        viewOne.addSubview(buttonOneView)
        
        buttonOneView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonOneView.widthAnchor.constraint(equalToConstant: 30),
            buttonOneView.heightAnchor.constraint(equalToConstant: 10),
            buttonOneView.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor, constant: -20),
            buttonOneView.topAnchor.constraint(equalTo: buttonContinue.bottomAnchor, constant: 20)
        ])
    }
    
    func createButtonTwoView() {
        buttonTwoView = UIButton(frame: .zero)
        buttonTwoView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        buttonTwoView.layer.cornerRadius = 5
        buttonTwoView.layer.masksToBounds = true
        viewOne.addSubview(buttonTwoView)
        
        buttonTwoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonTwoView.widthAnchor.constraint(equalToConstant: 30),
            buttonTwoView.heightAnchor.constraint(equalToConstant: 10),
            buttonTwoView.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor, constant: 20),
            buttonTwoView.topAnchor.constraint(equalTo: buttonContinue.bottomAnchor, constant: 20)
        ])
        
        buttonTwoView.addTarget(self, action: #selector(pushButtonTwoAction), for: .touchUpInside)
    }
    @objc func pushButtonTwoAction() {
        let onboardingViewControllerTwo = OnboardingViewControllerTwo()
        navigationController?.pushViewController(onboardingViewControllerTwo, animated: false)
    }

    
    func createLabelThree() {
        labelThree = UILabel(frame: .zero)
        labelThree.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        labelThree.text = "Terms of Use       |       Privacy Policy"
        labelThree.lineBreakMode = .byWordWrapping
        labelThree.numberOfLines = 1
        labelThree.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        labelThree.textAlignment = .center
        viewOne.addSubview(labelThree)
        
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelThree.widthAnchor.constraint(equalToConstant: 376),
            labelThree.heightAnchor.constraint(equalToConstant: 36),
            labelThree.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor),
            labelThree.topAnchor.constraint(equalTo: buttonOneView.bottomAnchor, constant: 10),
            labelThree.bottomAnchor.constraint(equalTo: viewOne.bottomAnchor, constant: -10)
        ])
    }

}
