//
//  ViewController.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 19.12.2024.
//

import UIKit

protocol Coordinator {
    func show(from controller: UIViewController?)
}



class RootViewController: UIViewController {
    weak var coordinator: RootViewControllerCoordinator?
    
    @IBAction func red(_ sender: Any) {
        coordinator?.addRed(for: self)
    }
    
    
    @IBAction func startChain(_ sender: Any) {
        coordinator?.addChain(for: self)
    }
}
