//
//  RedViewController.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//
import UIKit

class RedViewController: UIViewController {
    weak var coordinator: RedViewControllerCoordinator?
    override func viewDidLoad() { super.viewDidLoad(); view.backgroundColor = .red }
    
    @IBAction func details(_ sender: Any) {
        coordinator?.showDetails(for: self)
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true)
    }
}
