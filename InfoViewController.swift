//
//  InfoViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit

class InfoViewController: UIViewController {

  private  lazy var button: UIButton = {
    let btn = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        btn.backgroundColor = .systemGray
        btn.layer.cornerRadius = 12
        btn.setTitle("Показать Alert", for: .normal)
        btn.setTitleColor(.systemGray5, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        self.navigationItem.title = "Info"
        self.view.addSubview(button)
    }
    
    @objc func showAlert () {
    
        let alert = UIAlertController(title: "Поздравляю!", message: "Домашняя работа готова", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Поставить зачет", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
