//
//  HomeEmptyViewController.swift
//  Loan Calculator
//
//  Created by VanMac on 29.11.2023.
//

import UIKit

class HomeEmptyViewController: UIViewController {
    
    
    
    var buttonLoad = UIButton()
    var viewUser = UIView()
    var tableView = UITableView()
    let cellIndentifier = "Cell"
    var itemArray = [Model]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        rightBurButton()
        leftBurButton()
        createTableView()
        createButtonAddLoan()
        
//        let item = Model(title: "qwe", amount: "rty", rate: "12", firstPaymentDate: "34")
//        itemArray.append(item)
        
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
        let labelLeft = UILabel()
        labelLeft.text = "WELCOME"
        labelLeft.textColor = .white
        labelLeft.font = .boldSystemFont(ofSize: 18)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: labelLeft)

    }
    
    func createTableView() {
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)
        
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
              
        /*
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 11),
            tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -11),
            tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 35)
        ])
         */
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
            buttonLoad.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            buttonLoad.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 14.5),
            buttonLoad.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -14.5),
        ])
        
        buttonLoad.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }
    @objc func pushButtonAction() {
        let addLoanEmptyViewController = AddLoanEmptyViewController()
        navigationController?.pushViewController(addLoanEmptyViewController, animated: true)
    }
    
}

extension HomeEmptyViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as? MyTableViewCell {
            cell.selectionStyle = .gray
            let item = itemArray[indexPath.row]
            cell.refresh(item)
            return cell
        }
        return UITableViewCell()
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        125.0
    }
    
    
}

