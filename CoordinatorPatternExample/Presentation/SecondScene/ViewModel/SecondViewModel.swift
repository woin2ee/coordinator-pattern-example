//
//  SecondViewModel.swift
//  CoordinatorPatternExample
//
//  Created by Jaewon on 2022/06/24.
//

import Foundation

protocol SecondViewCoordinatingDelegate: AnyObject {
    func finishCoordinating()
    func pushToFirst()
    func pushToThird()
}

protocol SecondViewModelInput {
    func didFinish()
    func didTapMoveFirstButton()
    func didTapMoveThirdButton()
}

protocol SecondViewModel: SecondViewModelInput {}

final class DefaultSecondViewModel {
    
    private weak var coordinatorDelegate: SecondViewCoordinatingDelegate?
    
    init(coordinatorDelegate: SecondViewCoordinatingDelegate) {
        self.coordinatorDelegate = coordinatorDelegate
    }
}

extension DefaultSecondViewModel: SecondViewModel {
    
    func didFinish() {
        coordinatorDelegate?.finishCoordinating()
    }
    
    func didTapMoveFirstButton() {
        coordinatorDelegate?.pushToFirst()
    }
    
    func didTapMoveThirdButton() {
        coordinatorDelegate?.pushToThird()
    }
}
