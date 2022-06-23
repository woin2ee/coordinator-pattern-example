//
//  HomeViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/23.
//

import Foundation

protocol HomeCoordinatingDelegate: AnyObject {
    func pushToFirstView()
    func pushToSecondView()
    func pushToThirdView()
}

protocol HomeViewModelInput {
    func didTapMoveFirstViewButton()
    func didTapMoveSecondViewButton()
    func didTapMoveThirdViewButton()
}

protocol HomeViewModel: HomeViewModelInput {}

final class DefaultHomeViewModel {
    
    private weak var coordinatorDelegate: HomeCoordinatingDelegate?
    
    init(coordinatorDelegate: HomeCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultHomeViewModel: HomeViewModel {
    
    func didTapMoveFirstViewButton() {
        coordinatorDelegate?.pushToFirstView()
    }
    
    func didTapMoveSecondViewButton() {
        coordinatorDelegate?.pushToSecondView()
    }
    
    func didTapMoveThirdViewButton() {
        coordinatorDelegate?.pushToThirdView()
    }
}
