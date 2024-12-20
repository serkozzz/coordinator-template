//
//  RedViewControllerDelegate.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//
import UIKit

class RedViewControllerCoordinator: Coordinator {
    
    lazy var redDetailsViewControllerCoordinator = RedDetailsViewControllerCoordinator()
    func show(from controller: UIViewController?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
        vc.coordinator = self
        vc.modalPresentationStyle = .fullScreen
        controller!.present(vc, animated: true)
    }
    
    func showDetails(for controller: UIViewController) {
        redDetailsViewControllerCoordinator.show(from: controller)
    }
}


