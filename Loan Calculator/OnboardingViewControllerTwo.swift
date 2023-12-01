//
//  OnboardingViewControllerTwo.swift
//  Loan Calculator
//
//  Created by VanMac on 28.11.2023.
//

import UIKit

class OnboardingViewControllerTwo: UIViewController {

    var imageViewTwo = UIImageView()
    var viewTwo = UIView()
    var labelOne = UILabel()
    var labelTwo = UILabel()
    var buttonContinue = UIButton()
    var buttonOneView = UIButton()
    var buttonTwoView = UIButton()
    var labelThree = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)
        
        self.navigationItem.setHidesBackButton(true, animated: true)

        createImageViewTwo()
        createTwoView()
        createLabelOne()
        createLabelTwo()
        createButtonContinue()
        createButtonOneView()
        createButtonTwoView()
        createLabelThree()
    }
    
    func createImageViewTwo() {
        imageViewTwo = UIImageView(frame: .zero)
        imageViewTwo.image = UIImage(named: "onboarding2")
        self.view.addSubview(imageViewTwo)
        
        imageViewTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewTwo.widthAnchor.constraint(equalToConstant: 268),
            imageViewTwo.heightAnchor.constraint(equalToConstant: 268),
            imageViewTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageViewTwo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 98),
        ])
    }
    
    func createTwoView() {
        viewTwo = UIView(frame: .zero)
        viewTwo.backgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 48/255.0, alpha: 1.0)
        viewTwo.layer.cornerRadius = 28
        viewTwo.layer.masksToBounds = true
        self.view.addSubview(viewTwo)
        
        viewTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewTwo.widthAnchor.constraint(equalToConstant: 353),
            viewTwo.heightAnchor.constraint(equalToConstant: 303),
            viewTwo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            viewTwo.topAnchor.constraint(equalTo: imageViewTwo.bottomAnchor, constant: 200),
            viewTwo.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
        ])
    }
    
    func createLabelOne() {
        labelOne.text = "WE VALUE YOUR FEEDBACK"
        labelOne.textColor = .white
        labelOne.lineBreakMode = .byWordWrapping
        labelOne.numberOfLines = 1
        labelOne.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        labelOne.textAlignment = .center
        viewTwo.addSubview(labelOne)
        
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelOne.widthAnchor.constraint(equalToConstant: 283),
            labelOne.heightAnchor.constraint(equalToConstant: 20),
            labelOne.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor),
            labelOne.topAnchor.constraint(equalTo: viewTwo.topAnchor, constant: 33),
        ])
    }
    
    func createLabelTwo() {
        labelTwo = UILabel(frame: .zero)
        labelTwo.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        labelTwo.text = "Every day we are getting better due to your ratings and reviews — that helps us protect your accounts."
        labelTwo.lineBreakMode = .byWordWrapping
        labelTwo.numberOfLines = 2
        labelTwo.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        labelTwo.textAlignment = .center
        viewTwo.addSubview(labelTwo)
        
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTwo.widthAnchor.constraint(equalToConstant: 306),
            labelTwo.heightAnchor.constraint(equalToConstant: 33),
            labelTwo.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor),
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
        viewTwo.addSubview(buttonContinue)
        
        buttonContinue.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonContinue.widthAnchor.constraint(equalToConstant: 312),
            buttonContinue.heightAnchor.constraint(equalToConstant: 62),
            buttonContinue.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor),
            buttonContinue.topAnchor.constraint(equalTo: labelTwo.bottomAnchor, constant: 40)
        ])
        
        buttonContinue.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }
    @objc func pushButtonAction() {
        let homeEmptyViewController = HomeEmptyViewController()
        navigationController?.pushViewController(homeEmptyViewController, animated: true)
    }
    
    func createButtonOneView() {
        buttonOneView = UIButton(frame: .zero)
        buttonOneView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        buttonOneView.layer.cornerRadius = 5
        buttonOneView.layer.masksToBounds = true
        viewTwo.addSubview(buttonOneView)
        
        buttonOneView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonOneView.widthAnchor.constraint(equalToConstant: 30),
            buttonOneView.heightAnchor.constraint(equalToConstant: 10),
            buttonOneView.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor, constant: -20),
            buttonOneView.topAnchor.constraint(equalTo: buttonContinue.bottomAnchor, constant: 20)
        ])
        buttonOneView.addTarget(self, action: #selector(popButtonAction), for: .touchUpInside)
    }
    @objc func popButtonAction() {
        navigationController?.popViewController(animated: false)
    }

    
    func createButtonTwoView() {
        buttonTwoView = UIButton(frame: .zero)
        buttonTwoView.backgroundColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        buttonTwoView.layer.cornerRadius = 5
        buttonTwoView.layer.masksToBounds = true
        viewTwo.addSubview(buttonTwoView)
        
        buttonTwoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonTwoView.widthAnchor.constraint(equalToConstant: 30),
            buttonTwoView.heightAnchor.constraint(equalToConstant: 10),
            buttonTwoView.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor, constant: 20),
            buttonTwoView.topAnchor.constraint(equalTo: buttonContinue.bottomAnchor, constant: 20)
        ])
    }

    
    func createLabelThree() {
        labelThree = UILabel(frame: .zero)
        labelThree.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        labelThree.text = "Terms of Use       |       Privacy Policy"
        labelThree.lineBreakMode = .byWordWrapping
        labelThree.numberOfLines = 1
        labelThree.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        labelThree.textAlignment = .center
        viewTwo.addSubview(labelThree)
        
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelThree.widthAnchor.constraint(equalToConstant: 376),
            labelThree.heightAnchor.constraint(equalToConstant: 36),
            labelThree.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor),
            labelThree.topAnchor.constraint(equalTo: buttonOneView.bottomAnchor, constant: 10),
            labelThree.bottomAnchor.constraint(equalTo: viewTwo.bottomAnchor, constant: -10)
        ])
    }

}
