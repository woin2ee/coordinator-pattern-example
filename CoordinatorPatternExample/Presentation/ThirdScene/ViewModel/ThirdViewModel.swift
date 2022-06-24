//
//  ThirdViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol ThirdViewCoordinatingDelegate: AnyObject {
    func finishCoordinating()
    func pushToFirst()
    func pushToSecond()
}

protocol ThirdViewModelInput {
    func didFinish()
    func didTapMoveFirstButton()
    func didTapMoveSecondButton()
}

protocol ThirdViewModel: ThirdViewModelInput {}

final class DefaultThirdViewModel {
    
    private weak var coordinatorDelegate: ThirdViewCoordinatingDelegate?
    
    init(coordinatorDelegate: ThirdViewCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultThirdViewModel: ThirdViewModel {
    
    func didFinish() {
        coordinatorDelegate?.finishCoordinating()
    }
    
    func didTapMoveFirstButton() {
        coordinatorDelegate?.pushToFirst()
    }
    
    func didTapMoveSecondButton() {
        coordinatorDelegate?.pushToSecond()
    }
}
