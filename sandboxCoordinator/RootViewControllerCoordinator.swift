//
//  RootViewControllerDelegate.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//

import UIKit

class RootViewControllerCoordinator: Coordinator, ChainLink1ViewControllerCoordinatorDelegate {


    
    var window: UIWindow!
    weak var viewController: RootViewController?
    
    lazy var redViewControllerCoordinator = RedViewControllerCoordinator()
    lazy var chainLink1ControllerCoordinator = ChainLink1ViewControllerCoordinator()
    lazy var chainLink2ControllerCoordinator = ChainLink2ViewControllerCoordinator()
   
    init() {
        chainLink1ControllerCoordinator.delegate = self
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
        chainLink1ControllerCoordinator.show(from: controller)
    }
    
    func chainLink1ControllerDidFinish() {
        chainLink2ControllerCoordinator.show(from: self.viewController)
    }
}
