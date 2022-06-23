//
//  ThirdCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class ThirdCoordinator: ChildCoordinator {
    
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
    
    func didFinishCoordinating() {
        parentCoordinator?.childDidFinish(self)
    }
}
