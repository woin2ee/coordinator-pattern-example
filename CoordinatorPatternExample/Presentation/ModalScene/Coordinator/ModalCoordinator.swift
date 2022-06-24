//
//  ModalCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class ModalCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let modalVC = ModalViewController.instantiate(storyboardName: "Modal")
        self.navigationController.viewControllers.last?.present(modalVC, animated: true)
    }
}
