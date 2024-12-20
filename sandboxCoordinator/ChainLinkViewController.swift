//
//  ChainLink1ViewController.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//

import UIKit

protocol ChainLinkViewControllerDelegate: AnyObject {
    func chainLinkControllerDidFinish(_ sender: ChainLinkViewController)
}

class ChainLinkViewController: UIViewController {
    
    weak var delegate: ChainLinkViewControllerDelegate?
    
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
    }
    
    @objc func doneButtonTap() {
        delegate?.chainLinkControllerDidFinish(self)
    }
}
