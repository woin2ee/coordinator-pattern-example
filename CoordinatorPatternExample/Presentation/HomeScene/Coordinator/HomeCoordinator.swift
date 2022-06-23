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
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
        
        print("homeVC >>>>>>>>>>> \(homeVC)")
        
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
