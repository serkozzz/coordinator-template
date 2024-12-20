//
//  BlueViewControllerCoordinator.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//
import UIKit

protocol ChainLink2ViewControllerCoordinatorDelegate: AnyObject {
    func chainLink2ControllerDidFinish()
}

class ChainLink2ViewControllerCoordinator: Coordinator, ChainLink2ViewControllerDelegate {
    
    weak var delegate: ChainLink2ViewControllerCoordinatorDelegate?
    
    func chainLink2ControllerDidFinish(_ sender: UIViewController) {
        sender.dismiss(animated: true)
        delegate?.chainLink2ControllerDidFinish()
    }
    
    func show(from controller: UIViewController?) {
        
        let vc = ChainLink2ViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        controller!.present(vc, animated: true)
    }
}
