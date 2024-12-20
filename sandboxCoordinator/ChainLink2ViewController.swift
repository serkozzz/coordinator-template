//
//  ChainLink1ViewController.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//

import UIKit

protocol ChainLink2ViewControllerDelegate: AnyObject {
    func chainLink2ControllerDidFinish(_ sender: UIViewController)
}

class ChainLink2ViewController: UIViewController {
    
    weak var delegate: ChainLink2ViewControllerDelegate?
    
    var header: UILabel = {
        let label = UILabel()
        label.text = "Chain Link 2"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var doneButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Done"
        configuration.baseBackgroundColor = .green
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(doneButtonTap), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(doneButton)
        
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: doneButton.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: doneButton.centerYAnchor),
        ])
        
        view.addSubview(header)
        
        NSLayoutConstraint.activate([
            view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: header.topAnchor, constant: -40),
            view.centerXAnchor.constraint(equalTo: header.centerXAnchor),
        ])
    }
    
    @objc func doneButtonTap() {
        delegate?.chainLink2ControllerDidFinish(self)
    }
}
