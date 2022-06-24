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
    
    private weak var coordinatingDelegate: ThirdViewCoordinatingDelegate?
    
    init(coordinatorDelegate: ThirdViewCoordinatingDelegate) {
        self.coordinatingDelegate = coordinatorDelegate
    }
}

extension DefaultThirdViewModel: ThirdViewModel {
    
    func didFinish() {
        coordinatingDelegate?.finishCoordinating()
    }
    
    func didTapMoveFirstButton() {
        coordinatingDelegate?.pushToFirst()
    }
    
    func didTapMoveSecondButton() {
        coordinatingDelegate?.pushToSecond()
    }
}
