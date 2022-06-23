//
//  HomeCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class HomeCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeVC = HomeViewController.instantiate(storyboardName: "Home")
        homeVC.bind(viewModel: DefaultHomeViewModel())
        self.navigationController.pushViewController(homeVC, animated: false)
    }
}

extension HomeCoordinator: HomeCoordinatingDelegate {
    
    func pushToFirstView() {
        
    }
    
    func pushToSecondView() {
        
    }
    
    func pushToThirdView() {
        
    }
}
