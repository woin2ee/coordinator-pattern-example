//
//  HomeCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

final class HomeCoordinator: ParentCoordinator {
    
    var childCoordinators: [ChildCoordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeVC = HomeViewController.instantiate(storyboardName: "Home")
        homeVC.bind(viewModel: DefaultHomeViewModel(coordinatorDelegate: self))
        self.navigationController.pushViewController(homeVC, animated: false)
    }
}

extension HomeCoordinator: HomeCoordinatingDelegate {
    
    func pushToFirst() {
        let firstCoordinator = FirstCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(firstCoordinator)
        firstCoordinator.start()
    }
    
    func presentToFirst() {
        let firstCoordinator = FirstCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(firstCoordinator)
        firstCoordinator.startToModal()
    }
    
    func pushToSecond() {
        let secondCoordinator = SecondCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
    
    func pushToThird() {
        let thirdCoordinator = ThirdCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(thirdCoordinator)
        thirdCoordinator.start()
    }
    
    func presentToModal() {
        let modalCoordinator = ModalCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(modalCoordinator)
        modalCoordinator.start()
    }
}
