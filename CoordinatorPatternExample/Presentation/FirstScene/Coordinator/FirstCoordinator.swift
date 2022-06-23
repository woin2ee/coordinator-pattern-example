//
//  FirstCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class FirstCoordinator: ChildCoordinator {
    
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
        self.navigationController.pushViewController(firstVC, animated: true)
    }
}

extension FirstCoordinator: FirstViewCoordinatingDelegate {
    
    func didFinishCoordinating() {
        parentCoordinator?.childDidFinish(self)
    }
}
