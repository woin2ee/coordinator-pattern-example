//
//  ThirdCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class ThirdCoordinator: ParentCoordinator, ChildCoordinator {
    
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
        let thirdVC = ThirdViewController.instantiate(storyboardName: "Third")
        thirdVC.bind(viewModel: DefaultThirdViewModel(coordinatorDelegate: self))
        self.navigationController.pushViewController(thirdVC, animated: true)
    }
}

extension ThirdCoordinator: ThirdViewCoordinatingDelegate {
    
    func finishCoordinating() {
        parentCoordinator?.childDidFinish(self)
    }
    
    func pushToFirst() {
        let firstCoordinator = FirstCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(firstCoordinator)
        firstCoordinator.start()
    }
    
    func pushToSecond() {
        let secondCoordinator = SecondCoordinator(
            parentCoordinator: self,
            navigationController: self.navigationController
        )
        childCoordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
}
