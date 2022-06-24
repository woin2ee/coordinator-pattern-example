//
//  SecondCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class SecondCoordinator: ChildCoordinator {
    
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
        let secondVC = SecondViewController.instantiate(storyboardName: "Second")
        secondVC.bind(viewModel: DefaultSecondViewModel(coordinatorDelegate: self))
        self.navigationController.pushViewController(secondVC, animated: true)
    }
}

extension SecondCoordinator: SecondViewCoordinatingDelegate {
    
    func finishCoordinating() {
        parentCoordinator?.childDidFinish(self)
    }
}
