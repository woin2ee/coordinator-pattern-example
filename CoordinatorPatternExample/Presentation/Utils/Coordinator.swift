//
//  Coordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    
    func start()
}

protocol ParentCoordinator: Coordinator {
    var childCoordinators: [ChildCoordinator] { get set }
    
    func childDidFinish(_ child: ChildCoordinator?)
}

extension ParentCoordinator {
    func childDidFinish(_ child: ChildCoordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}

protocol ChildCoordinator: Coordinator {
    // must be declared 'weak' for avoid retain cycle
    var parentCoordinator: ParentCoordinator? { get set }
}
