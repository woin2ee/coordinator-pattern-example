//
//  FirstViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol FirstViewCoordinatingDelegate: AnyObject {
    func finishCoordinating()
    func pushToSecond()
    func pushToThird()
}

protocol FirstViewModelInput {
    func didFinish()
    func didTapMoveSecondButton()
    func didTapMoveThirdButton()
}

protocol FirstViewModel: FirstViewModelInput {}

final class DefaultFirstViewModel {
    
    private weak var coordinatorDelegate: FirstViewCoordinatingDelegate?
    
    init(coordinatorDelegate: FirstViewCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultFirstViewModel: FirstViewModel {
    
    func didFinish() {
        coordinatorDelegate?.finishCoordinating()
    }
    
    func didTapMoveSecondButton() {
        coordinatorDelegate?.pushToSecond()
    }
    
    func didTapMoveThirdButton() {
        coordinatorDelegate?.pushToThird()
    }
}
