//
//  BlueViewControllerCoordinator.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//
import UIKit

protocol ChainLink1ViewControllerCoordinatorDelegate: AnyObject {
    func chainLink1ControllerDidFinish()
}

class ChainLink1ViewControllerCoordinator: Coordinator, ChainLink1ViewControllerDelegate {
    
    weak var delegate: ChainLink1ViewControllerCoordinatorDelegate?
    func chainLink1ControllerDidFinish(_ sender: UIViewController) {
        sender.dismiss(animated: true)
        delegate?.chainLink1ControllerDidFinish()
    }
    
    func show(from controller: UIViewController?) {
        
        let vc = ChainLink1ViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        controller!.present(vc, animated: true)
    }
}
