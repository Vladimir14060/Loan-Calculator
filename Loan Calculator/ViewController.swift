//
//  ViewController.swift
//  Loan Calculator
//
//  Created by VanMac on 28.11.2023.
//

import UIKit

class ViewController: UIViewController {

    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 125, height: 125))
        imageView.image = UIImage(named: "Icon")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.backgroundColor = UIColor(red: 23/255.0, green: 23/255.0, blue: 32/255.0, alpha: 1.0)
        imageView.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.animate()
        })
    }
    
    //MARK: - иконка увеличивается при запуске и переход на друной контроллер
    func animate() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 4
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.imageView.frame = CGRect(
                x: -(diffX/2),
                y: diffY/2,
                width: size,
                height: size
            )
        })
        
        UIView.animate(withDuration: 1.5, animations: {
            self.imageView.alpha = 0.0
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: {
                    let viewController = OnboardingViewController()
                    viewController.modalTransitionStyle = .crossDissolve
                    viewController.modalPresentationStyle = .fullScreen
                    self.navigationController?.pushViewController(viewController, animated: true)
                })
            }
        })
    }


}

