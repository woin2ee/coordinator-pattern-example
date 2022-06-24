//
//  FirstCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class FirstCoordinator: ParentCoordinator, ChildCoordinator {
    
    var childCoordinators: [ChildCoordinator] = []
    weak var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    
    init(
        parentCoordinator: ParentCoordinator,
        navigationController: UINavigationController
    ) {
        self.parentCoordinator = parentCoordinator
        self.navigationController = navigationController
    }
    
    func start() {
        let firstVC = FirstViewController.instantiate(storyboardName: "First")
        firstVC.bind(viewModel: DefaultFirstViewModel(coordinatorDelegate: self))
//        self.navigationController.modalTransitionStyle = .coverVertical
//        self.navigationController.modalPresentationStyle = .fullScreen
        self.navigationController.pushViewController(firstVC, animated: true)
    }
}

extension FirstCoordinator: FirstViewCoordinatingDelegate {
    
    func finishCoordinating() {
        parentCoordinator?.childDidFinish(self)
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
}
