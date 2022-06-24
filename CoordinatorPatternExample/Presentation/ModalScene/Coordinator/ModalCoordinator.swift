//
//  ModalCoordinator.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import UIKit

final class ModalCoordinator: ParentCoordinator, ChildCoordinator {
    
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
        // ViewController 생성 & 의존성 주입
        let modalVC = ModalViewController.instantiate(storyboardName: "Modal")
        modalVC.bind(viewModel: DefaultModalViewModel(coordinatingDelegate: self))
        
        // Present 될 Modal 의 NavigationController(current) 생성 & ViewController 세팅
        let modalNC = UINavigationController()
        modalNC.setViewControllers([modalVC], animated: false)
        
        // 생성한 NavigationController(current) 를 주입받은 NavigationController(parent) context 에서 present()
        self.navigationController.viewControllers.last?.present(modalNC, animated: true)
        
        // 주입받은 NavigationController(parent) 를 버리고 현재 NavigationController(current) 로 세팅
        self.navigationController = modalNC
    }
}

extension ModalCoordinator: ModalCoordinatingDelegate {
    
    func finishCoordinating() {
        parentCoordinator?.childDidFinish(self)
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
