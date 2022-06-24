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
    
    private weak var coordinatingDelegate: FirstViewCoordinatingDelegate?
    
    init(coordinatorDelegate: FirstViewCoordinatingDelegate) {
        self.coordinatingDelegate = coordinatorDelegate
    }
}

extension DefaultFirstViewModel: FirstViewModel {
    
    func didFinish() {
        coordinatingDelegate?.finishCoordinating()
    }
    
    func didTapMoveSecondButton() {
        coordinatingDelegate?.pushToSecond()
    }
    
    func didTapMoveThirdButton() {
        coordinatingDelegate?.pushToThird()
    }
}
