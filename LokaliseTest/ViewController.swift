//
//  ViewController.swift
//  LokaliseTest
//
//  Created by Federico Jordan on 19/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let localizableKeys = [
        "dog",
        "cat",
        "bird",
        "goat",
        "bear",
        "duck",
        "bull",
        "cow",
        "tiger"
    ]
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.backgroundColor = .lightGray
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        super.loadView()
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            view.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            view.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: 16),
        ])
        configureList()
    }
    
    private func configureList() {
        localizableKeys.forEach { key in
            let label = UILabel()
            label.textAlignment = .center
            label.text = key.localized
            stackView.addArrangedSubview(label)
        }
    }
}

private extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
