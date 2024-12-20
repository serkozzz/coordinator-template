//
//  RedDetailsViewControllerDelegate.swift
//  sandboxCoordinator
//
//  Created by Sergey Kozlov on 20.12.2024.
//

import UIKit

class RedDetailsViewControllerCoordinator: Coordinator{
    func show(from controller: UIViewController?) {
        
        let vc = RedDetailsViewController()
        vc.modalPresentationStyle = .formSheet
        controller!.present(vc, animated: true)
    }
    
    
}
