//
//  RootViewControllerDelegate.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//

import UIKit

class RootViewControllerCoordinator: Coordinator, ChainLinkViewControllerCoordinatorDelegate {

    
    var window: UIWindow!
    weak var viewController: RootViewController?
    
    lazy var redViewControllerCoordinator = RedViewControllerCoordinator()
    lazy var blueViewControllerCoordinator = ChainLinkViewControllerCoordinator()
    lazy var blueViewController2Coordinator = ChainLinkViewControllerCoordinator()
   
    init() {
        blueViewControllerCoordinator.delegate = self
    }
    
    func show(from vc: UIViewController?) {
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var vc = storyboard.instantiateInitialViewController() as! RootViewController
        vc.coordinator = self
        self.viewController = vc
        window.rootViewController = vc
    }
    
    func addRed(for controller: UIViewController) {
        redViewControllerCoordinator.show(from: controller)
    }
    
    func addChain(for controller: UIViewController) {
        blueViewControllerCoordinator.show(from: controller)
    }
    
    func chainLinkControllerDidFinish() {
        blueViewController2Coordinator.show(from: self.viewController)
    }
}
