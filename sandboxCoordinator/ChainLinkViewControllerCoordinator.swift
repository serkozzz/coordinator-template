//
//  BlueViewControllerCoordinator.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//
import UIKit

protocol ChainLinkViewControllerCoordinatorDelegate: AnyObject {
    func chainLinkControllerDidFinish()
}

class ChainLinkViewControllerCoordinator: Coordinator, ChainLinkViewControllerDelegate {
    
    weak var delegate: ChainLinkViewControllerCoordinatorDelegate?
    func chainLinkControllerDidFinish(_ sender: ChainLinkViewController) {
        sender.dismiss(animated: true)
        delegate?.chainLinkControllerDidFinish()
    }
    
    func show(from controller: UIViewController?) {
        
        let vc = ChainLinkViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        controller!.present(vc, animated: true)
    }
}
