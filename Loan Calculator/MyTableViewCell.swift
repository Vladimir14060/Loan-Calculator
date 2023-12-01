//
//  MyTableViewCell.swift
//  Loan Calculator
//
//  Created by VanMac on 30.11.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    var titleCell: UILabel = {
        let label = UILabel()
        label.textColor = .green
        label.font = .systemFont(ofSize: 12, weight: .bold)
        return label
    }()
    
    let amountTitle: UILabel = {
        let label = UILabel()
        label.text = "Amount"
        label.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        label.font = .systemFont(ofSize: 11, weight: .regular)
        return label
    }()
    var amount: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 12, weight: .bold)
        return label
    }()
    
    let rateTitle: UILabel = {
        let label = UILabel()
        label.text = "Rate"
        label.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        label.font = .systemFont(ofSize: 11, weight: .regular)
        return label
    }()
    var rate: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 12, weight: .bold)
        return label
    }()
    
    let firstPaymentDateTitle: UILabel = {
        let label = UILabel()
        label.text = "Issue date"
        label.textColor = UIColor(red: 74/255.0, green: 74/255.0, blue: 91/255.0, alpha: 1.0)
        label.font = .systemFont(ofSize: 11, weight: .regular)
        return label
    }()
    var firstPaymentDate: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 12, weight: .bold)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupView() {
        contentView.backgroundColor = .clear
        backgroundColor = .clear
        contentView.addSubview(titleCell)
        contentView.addSubview(amountTitle)
        contentView.addSubview(amount)
        contentView.addSubview(rateTitle)
        contentView.addSubview(rate)
        contentView.addSubview(firstPaymentDateTitle)
        contentView.addSubview(firstPaymentDate)
         
        
        titleCell.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleCell.widthAnchor.constraint(equalToConstant: 311),
            titleCell.heightAnchor.constraint(equalToConstant: 15),
            titleCell.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20.5),
            titleCell.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -21.5),
            titleCell.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 16.25)
        ])
        
        amountTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amountTitle.widthAnchor.constraint(equalToConstant: 47),
            amountTitle.heightAnchor.constraint(equalToConstant: 17),
            amountTitle.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 22.5),
            amountTitle.topAnchor.constraint(equalTo: titleCell.bottomAnchor, constant: 21)
        ])
        amount.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amount.widthAnchor.constraint(equalToConstant: 51),
            amount.heightAnchor.constraint(equalToConstant: 17),
            amount.leadingAnchor.constraint(equalTo: titleCell.leadingAnchor),
            amount.topAnchor.constraint(equalTo: amountTitle.bottomAnchor)
        ])
        
        rateTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rateTitle.widthAnchor.constraint(equalToConstant: 26),
            rateTitle.heightAnchor.constraint(equalToConstant: 17),
            rateTitle.leadingAnchor.constraint(equalTo: amountTitle.trailingAnchor, constant: 88),
            rateTitle.topAnchor.constraint(equalTo: titleCell.bottomAnchor, constant: 21)
        ])
        rate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rate.widthAnchor.constraint(equalToConstant: 16),
            rate.heightAnchor.constraint(equalToConstant: 17),
            rate.leadingAnchor.constraint(equalTo: amount.leadingAnchor, constant: 93),
            rate.topAnchor.constraint(equalTo: rateTitle.bottomAnchor)
        ])
        
        firstPaymentDateTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstPaymentDateTitle.widthAnchor.constraint(equalToConstant: 57),
            firstPaymentDateTitle.heightAnchor.constraint(equalToConstant: 17),
            firstPaymentDateTitle.leadingAnchor.constraint(equalTo: rateTitle.trailingAnchor, constant: 88),
            firstPaymentDateTitle.topAnchor.constraint(equalTo: titleCell.bottomAnchor, constant: 21)
        ])
        firstPaymentDate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstPaymentDate.widthAnchor.constraint(equalToConstant: 50),
            firstPaymentDate.heightAnchor.constraint(equalToConstant: 17),
            firstPaymentDate.leadingAnchor.constraint(equalTo: rate.leadingAnchor, constant: 91.5),
            firstPaymentDate.topAnchor.constraint(equalTo: rateTitle.bottomAnchor)
        ])
        

    }
    
    public func refresh(_ model: Model) {
        titleCell.text = model.title
        amount.text = model.amount
        rate.text = model.rate
        firstPaymentDate.text = model.firstPaymentDate
    }
    
    

}
